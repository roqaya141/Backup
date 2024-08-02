//
//  SignUpVC.swift
//  FinalProjectBM
//
//  Created by Abdelrahman Amer on 31/07/2024.
//

import UIKit
import FittedSheets
class SignUpVC: UIViewController {

    @IBOutlet var backGroundView: UIView!
    
    @IBOutlet weak var button: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        backGroundView.addGradientWithColor(view: self.view)
    }
    @IBAction func buttonAction(_ sender: Any) {
        let controller = CountrySelectVC()

        let options = SheetOptions(
            // The full height of the pull bar. The presented view controller will treat this area as a safearea inset on the top
            pullBarHeight: 24,
            
            // The corner radius of the shrunken presenting view controller
            presentingViewCornerRadius: 20,
            
            // Extends the background behind the pull bar or not
            shouldExtendBackground: true,
            
            // Attempts to use intrinsic heights on navigation controllers. This does not work well in combination with keyboards without your code handling it.
            setIntrinsicHeightOnNavigationControllers: true,
            
            // Pulls the view controller behind the safe area top, especially useful when embedding navigation controllers
            useFullScreenMode: true,
            
            // Shrinks the presenting view controller, similar to the native modal
            shrinkPresentingViewController: true,
            
            // Determines if using inline mode or not
            useInlineMode: false,
            
            // Adds a padding on the left and right of the sheet with this amount. Defaults to zero (no padding)
            horizontalPadding: 0,
            
            // Sets the maximum width allowed for the sheet. This defaults to nil and doesn't limit the width.
            maxWidth: nil
        )

        let sheetController = SheetViewController(
            controller: controller,
            sizes: [.intrinsic, .percent(0.25), .fixed(200), .percent(0.5)])
            
            
        // The size of the grip in the pull bar
        sheetController.gripSize = CGSize(width: 50, height: 6)

        // The color of the grip on the pull bar
        sheetController.gripColor = UIColor(white: 0.868, alpha: 1)

        // The corner curve of the sheet (iOS 13 or later)
        sheetController.cornerCurve = .continuous

        // The corner radius of the sheet
        sheetController.cornerRadius = 20
            
        // minimum distance above the pull bar, prevents bar from coming right up to the edge of the screen
        sheetController.minimumSpaceAbovePullBar = 0

        // Set the pullbar's background explicitly
        sheetController.pullBarBackgroundColor = UIColor.blue

        // Determine if the rounding should happen on the pullbar or the presented controller only (should only be true when the pull bar's background color is .clear)
        sheetController.treatPullBarAsClear = false

        // Disable the dismiss on background tap functionality
        sheetController.dismissOnOverlayTap = false

        // Disable the ability to pull down to dismiss the modal
        sheetController.dismissOnPull = false

        /// Allow pulling past the maximum height and bounce back. Defaults to true.
        sheetController.allowPullingPastMaxHeight = false

        /// Automatically grow/move the sheet to accomidate the keyboard. Defaults to true.
        sheetController.autoAdjustToKeyboard = true

        // Color of the sheet anywhere the child view controller may not show (or is transparent), such as behind the keyboard currently
        sheetController.contentBackgroundColor

        // Change the overlay color
        sheetController.overlayColor = UIColor.red

        self.present(sheetController, animated: false, completion: nil)    }
}

