.class public Lcom/android/phone/callsettings/AutoRejectDeleteLayout;
.super Landroid/widget/LinearLayout;
.source "AutoRejectDeleteLayout.java"

# interfaces
.implements Landroid/widget/Checkable;


# instance fields
.field checkable:Landroid/view/View;

.field checkableId:I


# virtual methods
.method public isChecked()Z
    .locals 1

    iget v0, p0, Lcom/android/phone/callsettings/AutoRejectDeleteLayout;->checkableId:I

    invoke-virtual {p0, v0}, Lcom/android/phone/callsettings/AutoRejectDeleteLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/callsettings/AutoRejectDeleteLayout;->checkable:Landroid/view/View;

    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectDeleteLayout;->checkable:Landroid/view/View;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectDeleteLayout;->checkable:Landroid/view/View;

    check-cast v0, Landroid/widget/Checkable;

    invoke-interface {v0}, Landroid/widget/Checkable;->isChecked()Z

    move-result v0

    return v0
.end method

.method public setChecked(Z)V
    .locals 1

    iget v0, p0, Lcom/android/phone/callsettings/AutoRejectDeleteLayout;->checkableId:I

    invoke-virtual {p0, v0}, Lcom/android/phone/callsettings/AutoRejectDeleteLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/callsettings/AutoRejectDeleteLayout;->checkable:Landroid/view/View;

    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectDeleteLayout;->checkable:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectDeleteLayout;->checkable:Landroid/view/View;

    check-cast v0, Landroid/widget/Checkable;

    invoke-interface {v0, p1}, Landroid/widget/Checkable;->setChecked(Z)V

    return-void
.end method

.method public toggle()V
    .locals 1

    iget v0, p0, Lcom/android/phone/callsettings/AutoRejectDeleteLayout;->checkableId:I

    invoke-virtual {p0, v0}, Lcom/android/phone/callsettings/AutoRejectDeleteLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/callsettings/AutoRejectDeleteLayout;->checkable:Landroid/view/View;

    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectDeleteLayout;->checkable:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectDeleteLayout;->checkable:Landroid/view/View;

    check-cast v0, Landroid/widget/Checkable;

    invoke-interface {v0}, Landroid/widget/Checkable;->toggle()V

    return-void
.end method
