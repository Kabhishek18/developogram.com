from django import forms
 
# creating a form
class InputForm(forms.Form):
    INK_CHOICES = (
        ('Black', 'black'),
        ('Red', 'red'),
        ('Blue', 'blue'),
        ('green', 'green'),
        )
    SIZE_CHOICES = (
        ('10px', '10px'),
        ('12px', '12px'),
        ('14px', '14px'),
        ('16px', '16px'),
        ('18px', '18px'),
        ('20px', '20px'),
        ('22px', '22px'),
        ('24px', '24px'),
        ('26px', '26px'),
        )
    FONT_CHOICES =(
        ('Baby Doll',	'Baby Doll'),
        ('GloriaHallelujah-Regular',	'GloriaHallelujah-Regular'),
        ('HomemadeApple-Regular',	'HomemadeApple-Regular'),
        ('ndieFlower-Regular' ,'IndieFlower-Regular.'),
        ('KIdDOS-Regular','KIdDOS-Regular'),
        ('Kalam-Bold'	,'Kalam-Bold'),
        ('Kalam-Light'	,'Kalam-Light'),
        ('Kalam-Regular',	'Kalam-Regular'),
        ('Lemonella',	'Lemonella'),
        ('PermanentMarker-Regular',	'PermanentMarker-Regular'),
        ('Schoolbell-Regular'	,'Schoolbell-Regular'),
        ('kindergarten',	'kindergarten'),
        ('tangerine',	'tangerine'),
                   )
    PAPER_CHOICES =(
        ('1',	'Paper 1'),
        ('2',	'Paper 2'),
        ('3',	'Paper 3'),
        ('4',	'Paper 4'),
        ('5',	'Paper 5'),
        ('6',	'Paper 6'),
        ('7',	'Paper 7'),
        ('8',	'Paper 8'),
        ('9',	'Paper 9'),
                   )
   
    bg_paper = forms.ChoiceField(choices=PAPER_CHOICES,widget=forms.Select(attrs={'class':'round ','id':'id_bg_paper'}))
    # bg_Image = forms.FileField(widget=forms.FileInput(attrs={'Onchange':'chooseImage()','id':"btChooseImage",'value':'Select an Image'}))
    bg_background = forms.FileField(widget=forms.FileInput(attrs={'Onchange':'showImage(this)','style':"",'id':"file_input"}))
    font_family = forms.ChoiceField(choices=FONT_CHOICES,widget=forms.Select(attrs={'class':'round','id':'id_font_family'}))
    font_size = forms.ChoiceField(choices=SIZE_CHOICES,widget=forms.Select(attrs={'class':'round','id':'id_font_size'}))
    ink_color = forms.ChoiceField(choices=INK_CHOICES,widget=forms.Select(attrs={'class':'round','id':'id_ink_color'}))
    text = forms.CharField(widget=forms.Textarea(attrs={'class': 'text_rounded_list','id':'id_text_convert','onkeyup': 'writeText(this)',}), max_length = 800)
    