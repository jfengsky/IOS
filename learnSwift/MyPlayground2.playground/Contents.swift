import UIKit

let colors = [
    "Air Force Blue": (red: 93, green: 138, blue: 168),
    "Bittersweet": (red: 254, green: 111, blue: 94),
    "Canary Yellow": (red: 255, green: 239, blue: 0)
]

var backView = UIView(frame: CGRectMake(0.0, 0.0, 320.0, CGFloat(colors.count * 50)));

backView.backgroundColor = UIColor.blackColor();

var index = 0;
for (colorName, rgbTuple) in colors {
    var colorStripe = UILabel(frame: CGRectMake(0.0, CGFloat(index * 50 + 5), 320.0, 40.0));
    
    colorStripe.backgroundColor = UIColor(
        red: CGFloat(rgbTuple.red) / 255.0,
        green: CGFloat(rgbTuple.green) / 255.0,
        blue: CGFloat(rgbTuple.green) / 255.0,
        alpha: 1.0
    );
    colorStripe;
    
    var colorNameLabel = UILabel(frame: CGRectMake(0.0, 0.0, 300.0, 40.0));
    colorNameLabel.font = UIFont(name: "Arial", size: 24.0);
    colorNameLabel.textColor = UIColor.blackColor();
    colorNameLabel.textAlignment = NSTextAlignment.Right;
    colorNameLabel.text = colorName;
    colorStripe.addSubview(colorNameLabel);
    
    backView.addSubview(colorStripe);
    
    index++;
}