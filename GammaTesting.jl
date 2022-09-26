using ImageContrastAdjustment

array = collect(0:0.1:1)
img = RGB(1, 1, 1) .* array

gamma_adjusted = adjust_histogram(img, GammaCorrection(gamma=1/2.2))
adjust_histogram(img, GammaCorrection(gamma=2.2))

save("gammaTest.png", img)
save("gammaAdjustedTest.png", gamma_adjusted)