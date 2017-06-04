.class public Lcom/sec/android/gallery3d/settings/AccountSettingSwitchPreference;
.super Landroid/preference/SwitchPreference;
.source "AccountSettingSwitchPreference.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/gallery3d/settings/AccountSettingSwitchPreference$OnSwitchChangeListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SettingSwitchPref"


# instance fields
.field private mOnSwitchChangeListener:Lcom/sec/android/gallery3d/settings/AccountSettingSwitchPreference$OnSwitchChangeListener;

.field private mSwitchButtonVisible:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/preference/SwitchPreference;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/gallery3d/settings/AccountSettingSwitchPreference;->mOnSwitchChangeListener:Lcom/sec/android/gallery3d/settings/AccountSettingSwitchPreference$OnSwitchChangeListener;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/settings/AccountSettingSwitchPreference;->mSwitchButtonVisible:Z

    const v0, 0x7f0400e1

    invoke-virtual {p0, v0}, Lcom/sec/android/gallery3d/settings/AccountSettingSwitchPreference;->setWidgetLayoutResource(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/preference/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/gallery3d/settings/AccountSettingSwitchPreference;->mOnSwitchChangeListener:Lcom/sec/android/gallery3d/settings/AccountSettingSwitchPreference$OnSwitchChangeListener;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/settings/AccountSettingSwitchPreference;->mSwitchButtonVisible:Z

    const v0, 0x7f0400e1

    invoke-virtual {p0, v0}, Lcom/sec/android/gallery3d/settings/AccountSettingSwitchPreference;->setWidgetLayoutResource(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/preference/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/gallery3d/settings/AccountSettingSwitchPreference;->mOnSwitchChangeListener:Lcom/sec/android/gallery3d/settings/AccountSettingSwitchPreference$OnSwitchChangeListener;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/settings/AccountSettingSwitchPreference;->mSwitchButtonVisible:Z

    const v0, 0x7f0400e1

    invoke-virtual {p0, v0}, Lcom/sec/android/gallery3d/settings/AccountSettingSwitchPreference;->setWidgetLayoutResource(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/preference/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/gallery3d/settings/AccountSettingSwitchPreference;->mOnSwitchChangeListener:Lcom/sec/android/gallery3d/settings/AccountSettingSwitchPreference$OnSwitchChangeListener;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/settings/AccountSettingSwitchPreference;->mSwitchButtonVisible:Z

    const v0, 0x7f0400e1

    invoke-virtual {p0, v0}, Lcom/sec/android/gallery3d/settings/AccountSettingSwitchPreference;->setWidgetLayoutResource(I)V

    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 5

    const/16 v4, 0x8

    const/4 v3, 0x0

    const v2, 0x7f12021e

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Switch;

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/settings/AccountSettingSwitchPreference;->isChecked()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setChecked(Z)V

    invoke-virtual {v1, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-boolean v2, p0, Lcom/sec/android/gallery3d/settings/AccountSettingSwitchPreference;->mSwitchButtonVisible:Z

    if-eqz v2, :cond_2

    move v2, v3

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setVisibility(I)V

    :cond_0
    const v2, 0x7f12021d

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-boolean v2, p0, Lcom/sec/android/gallery3d/settings/AccountSettingSwitchPreference;->mSwitchButtonVisible:Z

    if-eqz v2, :cond_3

    :goto_1
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    invoke-super {p0, p1}, Landroid/preference/SwitchPreference;->onBindView(Landroid/view/View;)V

    return-void

    :cond_2
    move v2, v4

    goto :goto_0

    :cond_3
    move v3, v4

    goto :goto_1
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string/jumbo v2, "SettingSwitchPref"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onCheckedChanged isChecked : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sec/android/gallery3d/settings/AccountSettingSwitchPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    if-nez p2, :cond_0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    :goto_1
    return-void

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/sec/android/gallery3d/settings/AccountSettingSwitchPreference;->mOnSwitchChangeListener:Lcom/sec/android/gallery3d/settings/AccountSettingSwitchPreference$OnSwitchChangeListener;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/gallery3d/settings/AccountSettingSwitchPreference;->mOnSwitchChangeListener:Lcom/sec/android/gallery3d/settings/AccountSettingSwitchPreference$OnSwitchChangeListener;

    invoke-interface {v2, p2}, Lcom/sec/android/gallery3d/settings/AccountSettingSwitchPreference$OnSwitchChangeListener;->onSwitchChanged(Z)V

    :cond_2
    if-nez p2, :cond_3

    :goto_2
    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2
.end method

.method protected onClick()V
    .locals 0

    return-void
.end method

.method public setOnCheckChangeListener(Lcom/sec/android/gallery3d/settings/AccountSettingSwitchPreference$OnSwitchChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/settings/AccountSettingSwitchPreference;->mOnSwitchChangeListener:Lcom/sec/android/gallery3d/settings/AccountSettingSwitchPreference$OnSwitchChangeListener;

    return-void
.end method

.method public setSwitchButtonVisibility(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/gallery3d/settings/AccountSettingSwitchPreference;->mSwitchButtonVisible:Z

    return-void
.end method
