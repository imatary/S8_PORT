.class public Lcom/android/phone/RestrictedSwitchPreference;
.super Landroid/preference/SwitchPreference;
.source "RestrictedSwitchPreference.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDisabledByAdmin:Z

.field private final mSwitchWidgetResId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/phone/RestrictedSwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x101036d

    invoke-direct {p0, p1, p2, v0}, Lcom/android/phone/RestrictedSwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/phone/RestrictedSwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/preference/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    invoke-virtual {p0}, Lcom/android/phone/RestrictedSwitchPreference;->getWidgetLayoutResource()I

    move-result v0

    iput v0, p0, Lcom/android/phone/RestrictedSwitchPreference;->mSwitchWidgetResId:I

    iput-object p1, p0, Lcom/android/phone/RestrictedSwitchPreference;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public checkRestrictionAndSetDisabled(Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/android/phone/RestrictedSwitchPreference;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserManager;->getUserHandle()I

    move-result v3

    invoke-static {v3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1, p1, v2}, Landroid/os/UserManager;->hasBaseUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/phone/RestrictedSwitchPreference;->setDisabledByAdmin(Z)V

    return-void

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onBindView(Landroid/view/View;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/preference/SwitchPreference;->onBindView(Landroid/view/View;)V

    iget-boolean v1, p0, Lcom/android/phone/RestrictedSwitchPreference;->mDisabledByAdmin:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/view/View;->setEnabled(Z)V

    :cond_0
    const v1, 0x1020010

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/android/phone/RestrictedSwitchPreference;->mDisabledByAdmin:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/phone/RestrictedSwitchPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_2

    const v1, 0x7f0d0151

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    return-void

    :cond_2
    const v1, 0x7f0d0152

    goto :goto_0
.end method

.method public performClick(Landroid/preference/PreferenceScreen;)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/phone/RestrictedSwitchPreference;->mDisabledByAdmin:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/RestrictedSwitchPreference;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    invoke-direct {v1}, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;-><init>()V

    invoke-static {v0, v1}, Lcom/android/settingslib/RestrictedLockUtils;->sendShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    goto :goto_0
.end method

.method public setDisabledByAdmin(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/phone/RestrictedSwitchPreference;->mDisabledByAdmin:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/phone/RestrictedSwitchPreference;->mDisabledByAdmin:Z

    if-eqz p1, :cond_1

    const v0, 0x7f0400c4

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/phone/RestrictedSwitchPreference;->setWidgetLayoutResource(I)V

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/phone/RestrictedSwitchPreference;->setEnabled(Z)V

    :cond_0
    return-void

    :cond_1
    iget v0, p0, Lcom/android/phone/RestrictedSwitchPreference;->mSwitchWidgetResId:I

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public setEnabled(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/android/phone/RestrictedSwitchPreference;->mDisabledByAdmin:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/phone/RestrictedSwitchPreference;->setDisabledByAdmin(Z)V

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_0
.end method
