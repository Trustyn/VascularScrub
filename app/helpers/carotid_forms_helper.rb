module CarotidFormsHelper
    
    def show_bruit(num)
        bruit = Bruit.find(num)
        bruit.volume
    end
end
