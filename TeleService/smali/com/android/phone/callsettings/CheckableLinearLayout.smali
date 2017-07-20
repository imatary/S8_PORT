.class public Lcom/android/phone/callsettings/CheckableLinearLayout;
.super Landroid/widget/LinearLayout;
.source "CheckableLinearLayout.java"

# interfaces
.implements Landroid/widget/Checkable;


# instance fields
.field final ATTR:Ljava/lang/String;

.field final NAMESPACE:Ljava/lang/String;

.field checkable:Landroid/view/View;

.field checkableId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string/jumbo v0, "http://schemas.android.com/apk/res/android"

    iput-object v0, p0, Lcom/android/phone/callsettings/CheckableLinearLayout;->NAMESPACE:Ljava/lang/String;

    const-string/jumbo v0, "checkable"

    iput-object v0, p0, Lcom/android/phone/callsettings/CheckableLinearLayout;->ATTR:Ljava/lang/String;

    const-string/jumbo v0, "http://schemas.android.com/apk/res/android"

    const-string/jumbo v1, "checkable"

    const/4 v2, 0x0

    invoke-interface {p2, v0, v1, v2}, Landroid/util/AttributeSet;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/phone/callsettings/CheckableLinearLayout;->checkableId:I

    return-void
.end method


# virtual methods
.method public isChecked()Z
    .locals 1

    iget v0, p0, Lcom/android/phone/callsettings/CheckableLinearLayout;->checkableId:I

    invoke-virtual {p0, v0}, Lcom/android/phone/callsettings/CheckableLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/callsettings/CheckableLinearLayout;->checkable:Landroid/view/View;

    iget-object v0, p0, Lcom/android/phone/callsettings/CheckableLinearLayout;->checkable:Landroid/view/View;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/phone/callsettings/CheckableLinearLayout;->checkable:Landroid/view/View;

    check-cast v0, Landroid/widget/Checkable;

    invoke-interface {v0}, Landroid/widget/Checkable;->isChecked()Z

    move-result v0

    return v0
.end method

.method public setChecked(Z)V
    .locals 1

    iget v0, p0, Lcom/android/phone/callsettings/CheckableLinearLayout;->checkableId:I

    invoke-virtual {p0, v0}, Lcom/android/phone/callsettings/CheckableLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/callsettings/CheckableLinearLayout;->checkable:Landroid/view/View;

    iget-object v0, p0, Lcom/android/phone/callsettings/CheckableLinearLayout;->checkable:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/phone/callsettings/CheckableLinearLayout;->checkable:Landroid/view/View;

    check-cast v0, Landroid/widget/Checkable;

    invoke-interface {v0, p1}, Landroid/widget/Checkable;->setChecked(Z)V

    return-void
.end method

.method public toggle()V
    .locals 1

    iget v0, p0, Lcom/android/phone/callsettings/CheckableLinearLayout;->checkableId:I

    invoke-virtual {p0, v0}, Lcom/android/phone/callsettings/CheckableLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/callsettings/CheckableLinearLayout;->checkable:Landroid/view/View;

    iget-object v0, p0, Lcom/android/phone/callsettings/CheckableLinearLayout;->checkable:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/phone/callsettings/CheckableLinearLayout;->checkable:Landroid/view/View;

    check-cast v0, Landroid/widget/Checkable;

    invoke-interface {v0}, Landroid/widget/Checkable;->toggle()V

    return-void
.end method
