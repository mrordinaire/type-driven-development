module Shape

export
data Shape = Triangle Double Double
           | Rectangle Double Double
           | Circle Double

export
triangle : Double -> Double -> Shape
triangle = Triangle

export
rectangle : Double -> Double -> Shape
rectangle = Rectangle

export
circle : Double -> Shape
circle = Circle

public export
data ShapeView : Shape -> Type where
  STriangle : ShapeView (triangle base height)
  SRectangle : ShapeView (rectangle width height)
  SCircle : ShapeView (circle radius)

export
shapeView : (s : Shape) -> ShapeView s
shapeView (Triangle _ _) = STriangle
shapeView (Rectangle _ _) = SRectangle
shapeView (Circle _) = SCircle
