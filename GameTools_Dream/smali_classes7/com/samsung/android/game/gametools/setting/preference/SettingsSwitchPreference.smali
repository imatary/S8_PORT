.class public Lcom/samsung/android/game/gametools/setting/preference/SettingsSwitchPreference;
.super Landroid/preference/SemSwitchPreferenceScreen;
.source "SettingsSwitchPreference.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field protected mEnabledAppearance:Z

.field private mMsg:Ljava/lang/String;

.field private mSwitch:Landroid/widget/Switch;

.field private mSwitchCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mSwitchClickListener:Landroid/view/View$OnClickListener;

.field private mSwitchKeyListener:Landroid/view/View$OnKeyListener;

.field private mSwitchTouchListener:Landroid/view/View$OnTouchListener;

.field private mView:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/preference/SemSwitchPreferenceScreen;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/game/gametools/setting/preference/SettingsSwitchPreference;->mEnabledAppearance:Z

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/samsung/android/game/gametools/setting/preference/SettingsSwitchPreference;->mMsg:Ljava/lang/String;

    iput-object v1, p0, Lcom/samsung/android/game/gametools/setting/preference/SettingsSwitchPreference;->mSwitchKeyListener:Landroid/view/View$OnKeyListener;

    iput-object v1, p0, Lcom/samsung/android/game/gametools/setting/preference/SettingsSwitchPreference;->mSwitchCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    iput-object v1, p0, Lcom/samsung/android/game/gametools/setting/preference/SettingsSwitchPreference;->mSwitchTouchListener:Landroid/view/View$OnTouchListener;

    iput-object v1, p0, Lcom/samsung/android/game/gametools/setting/preference/SettingsSwitchPreference;->mSwitchClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/preference/SemSwitchPreferenceScreen;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/game/gametools/setting/preference/SettingsSwitchPreference;->mEnabledAppearance:Z

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/samsung/android/game/gametools/setting/preference/SettingsSwitchPreference;->mMsg:Ljava/lang/String;

    iput-object v1, p0, Lcom/samsung/android/game/gametools/setting/preference/SettingsSwitchPreference;->mSwitchKeyListener:Landroid/view/View$OnKeyListener;

    iput-object v1, p0, Lcom/samsung/android/game/gametools/setting/preference/SettingsSwitchPreference;->mSwitchCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    iput-object v1, p0, Lcom/samsung/android/game/gametools/setting/preference/SettingsSwitchPreference;->mSwitchTouchListener:Landroid/view/View$OnTouchListener;

    iput-object v1, p0, Lcom/samsung/android/game/gametools/setting/preference/SettingsSwitchPreference;->mSwitchClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/preference/SemSwitchPreferenceScreen;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/game/gametools/setting/preference/SettingsSwitchPreference;->mEnabledAppearance:Z

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/samsung/android/game/gametools/setting/preference/SettingsSwitchPreference;->mMsg:Ljava/lang/String;

    iput-object v1, p0, Lcom/samsung/android/game/gametools/setting/preference/SettingsSwitchPreference;->mSwitchKeyListener:Landroid/view/View$OnKeyListener;

    iput-object v1, p0, Lcom/samsung/android/game/gametools/setting/preference/SettingsSwitchPreference;->mSwitchCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    iput-object v1, p0, Lcom/samsung/android/game/gametools/setting/preference/SettingsSwitchPreference;->mSwitchTouchListener:Landroid/view/View$OnTouchListener;

    iput-object v1, p0, Lcom/samsung/android/game/gametools/setting/preference/SettingsSwitchPreference;->mSwitchClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/preference/SemSwitchPreferenceScreen;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/game/gametools/setting/preference/SettingsSwitchPreference;->mEnabledAppearance:Z

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/samsung/android/game/gametools/setting/preference/SettingsSwitchPreference;->mMsg:Ljava/lang/String;

    iput-object v1, p0, Lcom/samsung/android/game/gametools/setting/preference/SettingsSwitchPreference;->mSwitchKeyListener:Landroid/view/View$OnKeyListener;

    iput-object v1, p0, Lcom/samsung/android/game/gametools/setting/preference/SettingsSwitchPreference;->mSwitchCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    iput-object v1, p0, Lcom/samsung/android/game/gametools/setting/preference/SettingsSwitchPreference;->mSwitchTouchListener:Landroid/view/View$OnTouchListener;

    iput-object v1, p0, Lcom/samsung/android/game/gametools/setting/preference/SettingsSwitchPreference;->mSwitchClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method


# virtual methods
.method protected enableView(Landroid/view/View;Z)V
    .locals 3

    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    instance-of v2, p1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2, p2}, Lcom/samsung/android/game/gametools/setting/preference/SettingsSwitchPreference;->enableView(Landroid/view/View;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getSwitch()Landroid/widget/Switch;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/preference/SettingsSwitchPreference;->mSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method public inEnabledAppearance()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/game/gametools/setting/preference/SettingsSwitchPreference;->mEnabledAppearance:Z

    return v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-super {p0, p1}, Landroid/preference/SemSwitchPreferenceScreen;->onBindView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/preference/SettingsSwitchPreference;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-boolean v2, p0, Lcom/samsung/android/game/gametools/setting/preference/SettingsSwitchPreference;->mEnabledAppearance:Z

    if-eqz v2, :cond_5

    move v1, v3

    :goto_0
    invoke-virtual {p0, p1, v1}, Lcom/samsung/android/game/gametools/setting/preference/SettingsSwitchPreference;->enableView(Landroid/view/View;Z)V

    move-object v2, p1

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/samsung/android/game/gametools/setting/preference/SettingsSwitchPreference;->mView:Landroid/view/ViewGroup;

    const v2, 0x1020018

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Switch;

    iput-object v2, p0, Lcom/samsung/android/game/gametools/setting/preference/SettingsSwitchPreference;->mSwitch:Landroid/widget/Switch;

    iget-object v2, p0, Lcom/samsung/android/game/gametools/setting/preference/SettingsSwitchPreference;->mSwitch:Landroid/widget/Switch;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/samsung/android/game/gametools/setting/preference/SettingsSwitchPreference;->mSwitchKeyListener:Landroid/view/View$OnKeyListener;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/game/gametools/setting/preference/SettingsSwitchPreference;->mSwitch:Landroid/widget/Switch;

    iget-object v4, p0, Lcom/samsung/android/game/gametools/setting/preference/SettingsSwitchPreference;->mSwitchKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v2, v4}, Landroid/widget/Switch;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/game/gametools/setting/preference/SettingsSwitchPreference;->mSwitchCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/game/gametools/setting/preference/SettingsSwitchPreference;->mSwitch:Landroid/widget/Switch;

    iget-object v4, p0, Lcom/samsung/android/game/gametools/setting/preference/SettingsSwitchPreference;->mSwitchCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v2, v4}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/game/gametools/setting/preference/SettingsSwitchPreference;->mSwitchTouchListener:Landroid/view/View$OnTouchListener;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/game/gametools/setting/preference/SettingsSwitchPreference;->mSwitch:Landroid/widget/Switch;

    iget-object v4, p0, Lcom/samsung/android/game/gametools/setting/preference/SettingsSwitchPreference;->mSwitchTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v2, v4}, Landroid/widget/Switch;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_2
    iget-object v2, p0, Lcom/samsung/android/game/gametools/setting/preference/SettingsSwitchPreference;->mSwitchClickListener:Landroid/view/View$OnClickListener;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/samsung/android/game/gametools/setting/preference/SettingsSwitchPreference;->mSwitch:Landroid/widget/Switch;

    iget-object v4, p0, Lcom/samsung/android/game/gametools/setting/preference/SettingsSwitchPreference;->mSwitchClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v4}, Landroid/widget/Switch;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    iget-object v2, p0, Lcom/samsung/android/game/gametools/setting/preference/SettingsSwitchPreference;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v3}, Landroid/widget/Switch;->semSetHoverPopupType(I)V

    iget-object v2, p0, Lcom/samsung/android/game/gametools/setting/preference/SettingsSwitchPreference;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v3}, Landroid/widget/Switch;->semGetHoverPopup(Z)Lcom/samsung/android/widget/SemHoverPopupWindow;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/samsung/android/game/gametools/setting/preference/SettingsSwitchPreference;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v3}, Landroid/widget/Switch;->semGetHoverPopup(Z)Lcom/samsung/android/widget/SemHoverPopupWindow;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/game/gametools/setting/preference/SettingsSwitchPreference;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v3}, Landroid/widget/Switch;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f06048a

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/widget/SemHoverPopupWindow;->setContent(Ljava/lang/CharSequence;)V

    :cond_4
    return-void

    :cond_5
    move v1, v4

    goto :goto_0
.end method

.method protected onClick()V
    .locals 3

    iget-boolean v0, p0, Lcom/samsung/android/game/gametools/setting/preference/SettingsSwitchPreference;->mEnabledAppearance:Z

    if-eqz v0, :cond_0

    invoke-super {p0}, Landroid/preference/SemSwitchPreferenceScreen;->onClick()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/preference/SettingsSwitchPreference;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/game/gametools/setting/preference/SettingsSwitchPreference;->mMsg:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public setCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/game/gametools/setting/preference/SettingsSwitchPreference;->mSwitchCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    return-void
.end method

.method public setClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/game/gametools/setting/preference/SettingsSwitchPreference;->mSwitchClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setEnabledAppearance(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/game/gametools/setting/preference/SettingsSwitchPreference;->mEnabledAppearance:Z

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/preference/SettingsSwitchPreference;->notifyChanged()V

    return-void
.end method

.method public setKeyListener(Landroid/view/View$OnKeyListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/game/gametools/setting/preference/SettingsSwitchPreference;->mSwitchKeyListener:Landroid/view/View$OnKeyListener;

    return-void
.end method

.method public setToastMsg(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/game/gametools/setting/preference/SettingsSwitchPreference;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/game/gametools/setting/preference/SettingsSwitchPreference;->mMsg:Ljava/lang/String;

    return-void
.end method

.method public setTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/game/gametools/setting/preference/SettingsSwitchPreference;->mSwitchTouchListener:Landroid/view/View$OnTouchListener;

    return-void
.end method
