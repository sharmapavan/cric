from django import forms

from crickinfo.models import Teams


class AddForm(forms.ModelForm):
    city = forms.ModelChoiceField(queryset=Cities.objects, required=True)
    address_en = forms.CharField(max_length=512, required=False)
    address_ar = forms.CharField(max_length=512, required=False)
    longitude = forms.FloatField(required=True, widget=forms.HiddenInput())
    latitude = forms.FloatField(required=True, widget=forms.HiddenInput())
    revision = forms.BooleanField()
    department = forms.ModelMultipleChoiceField(
        queryset=Department.objects.filter(active=True),
        widget=forms.CheckboxSelectMultiple()
    )

    class Meta:
        model = Teams
        exclude = '__all__'
