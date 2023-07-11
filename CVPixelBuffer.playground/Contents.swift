import UIKit

/*
 CVPixelBuffer, CgImage, CIimage, UIimage 관련 함수들 모음
 */

//✅ resizing CVPixelBuffer
func resizeCVPixelBuffer(pixelBuffer: CVPixelBuffer, width: Int, height: Int) -> CVPixelBuffer? {
    var outputPixelBuffer: CVPixelBuffer?
    let status = CVPixelBufferCreate(kCFAllocatorDefault, width, height, kCVPixelFormatType_32ARGB, nil, &outputPixelBuffer)
    
    if status != kCVReturnSuccess {
        print("Failed to create pixel buffer")
        return nil
    }
    
    guard let finalPixelBuffer = outputPixelBuffer else { return nil }
    
    CVPixelBufferLockBaseAddress(finalPixelBuffer, [])
    
    let colorspace = CGColorSpaceCreateDeviceRGB()
    let ciContext = CIContext()
    let ciImage = CIImage(cvPixelBuffer: pixelBuffer)
    let rect = CGRect(x: 0, y: 0, width: width, height: height)
    
    ciContext.render(ciImage, to: finalPixelBuffer, bounds: rect, colorSpace: colorspace)
    
    CVPixelBufferUnlockBaseAddress(finalPixelBuffer, [])
    
    return finalPixelBuffer
}

