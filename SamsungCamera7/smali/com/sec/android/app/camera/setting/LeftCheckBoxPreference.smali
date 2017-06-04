.class public Lcom/sec/android/app/camera/setting/LeftCheckBoxPreference;
.super Landroid/preference/CheckBoxPreference;
.source "LeftCheckBoxPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/setting/LeftCheckBoxPreference$OnClickListener;
    }
.end annotation


# instance fields
.field private mListener:Lcom/sec/android/app/camera/setting/LeftCheckBoxPreference$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/app/camera/setting/LeftCheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/setting/LeftCheckBoxPreference;->mListener:Lcom/sec/android/app/camera/setting/LeftCheckBoxPreference$OnClickListener;

    const v0, 0x7f04000e

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/setting/LeftCheckBoxPreference;->setLayoutResource(I)V

    return-void
.end method


# virtual methods
.method public onBindView(Landroid/view/View;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/preference/CheckBoxPreference;->onBindView(Landroid/view/View;)V

    const v1, 0x1020016

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    :cond_0
    return-void
.end method

.method public onClick()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/LeftCheckBoxPreference;->mListener:Lcom/sec/android/app/camera/setting/LeftCheckBoxPreference$OnClickListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/LeftCheckBoxPreference;->mListener:Lcom/sec/android/app/camera/setting/LeftCheckBoxPreference$OnClickListener;

    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/setting/LeftCheckBoxPreference$OnClickListener;->onRadioButtonClicked(Lcom/sec/android/app/camera/setting/LeftCheckBoxPreference;)V

    :cond_0
    return-void
.end method

.method public setOnClickListener(Lcom/sec/android/app/camera/setting/LeftCheckBoxPreference$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/setting/LeftCheckBoxPreference;->mListener:Lcom/sec/android/app/camera/setting/LeftCheckBoxPreference$OnClickListener;

    return-void
.end method
