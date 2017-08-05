.class public Lcom/sec/android/app/camera/setting/TimerSettingFragment;
.super Landroid/app/ListFragment;
.source "TimerSettingFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/setting/TimerSettingFragment$TimerAdapter;,
        Lcom/sec/android/app/camera/setting/TimerSettingFragment$TimerListItemHolder;,
        Lcom/sec/android/app/camera/setting/TimerSettingFragment$TimerSelectListener;
    }
.end annotation


# static fields
.field private static final DIM_ALPHA_VALUE:F = 0.37f

.field protected static final FRONT_TIMER_LIST:I = 0x1

.field protected static final REAR_TIMER_LIST:I = 0x0

.field private static final TAG:Ljava/lang/String; = "TimerSettingFragment"

.field private static final TIMER_TYPE:Ljava/lang/String; = "type"


# instance fields
.field private mActivity:Lcom/sec/android/app/camera/setting/CameraSettingActivity;

.field private mIntervalSummaryTextView:Landroid/widget/TextView;

.field private mIntervalSwitch:Landroid/widget/Switch;

.field private mIntervalTextView:Landroid/widget/TextView;

.field private mList:[Ljava/lang/String;

.field mTimerAdapter:Lcom/sec/android/app/camera/setting/TimerSettingFragment$TimerAdapter;

.field private mTimerType:I

.field public onTimerListener:Lcom/sec/android/app/camera/setting/TimerSettingFragment$TimerSelectListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/setting/TimerSettingFragment;)I
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/TimerSettingFragment;->getTimer()I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/setting/TimerSettingFragment;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/setting/TimerSettingFragment;->setInterval(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/setting/TimerSettingFragment;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/TimerSettingFragment;->mList:[Ljava/lang/String;

    return-object v0
.end method

.method private getInterval()I
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/TimerSettingFragment;->getTimer()I

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget v1, p0, Lcom/sec/android/app/camera/setting/TimerSettingFragment;->mTimerType:I

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/TimerSettingFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "pref_camera_interval_key"

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/TimerSettingFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "pref_camera_front_interval_key"

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method private getTimer()I
    .locals 3

    const/4 v2, 0x0

    iget v0, p0, Lcom/sec/android/app/camera/setting/TimerSettingFragment;->mTimerType:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/TimerSettingFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_camera_timer_key"

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/TimerSettingFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_camera_front_timer_key"

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method private initializeList()V
    .locals 14

    const/4 v13, 0x0

    const v12, 0x7f0a01cf

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v11, 0x0

    const v1, 0x7f0900f4

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/setting/TimerSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/TimerSettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f0c0012

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/camera/setting/TimerSettingFragment;->mList:[Ljava/lang/String;

    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/TimerSettingFragment;->getTimer()I

    move-result v11

    iget v1, p0, Lcom/sec/android/app/camera/setting/TimerSettingFragment;->mTimerType:I

    if-nez v1, :cond_2

    const-string v1, "606"

    invoke-static {v1}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->setSAScreenId(Ljava/lang/String;)V

    :goto_0
    sget-boolean v1, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_INTERVAL_CAPTURE:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/TimerSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v4, 0x7f04001c

    invoke-virtual {v1, v4, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0f0058

    invoke-virtual {v10, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/android/app/camera/setting/TimerSettingFragment;->mIntervalTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/android/app/camera/setting/TimerSettingFragment;->mIntervalTextView:Landroid/widget/TextView;

    const v4, 0x7f0900c0

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    const v1, 0x7f0f0059

    invoke-virtual {v10, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/android/app/camera/setting/TimerSettingFragment;->mIntervalSummaryTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/android/app/camera/setting/TimerSettingFragment;->mIntervalSummaryTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/TimerSettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0901b1

    new-array v6, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/TimerSettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0b003e

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/setting/TimerSettingFragment;->mIntervalSummaryTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    const v1, 0x7f0f005a

    invoke-virtual {v10, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Switch;

    iput-object v1, p0, Lcom/sec/android/app/camera/setting/TimerSettingFragment;->mIntervalSwitch:Landroid/widget/Switch;

    iget-object v1, p0, Lcom/sec/android/app/camera/setting/TimerSettingFragment;->mActivity:Lcom/sec/android/app/camera/setting/CameraSettingActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->isAttachImageMode()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/setting/TimerSettingFragment;->mActivity:Lcom/sec/android/app/camera/setting/CameraSettingActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->isAttachVideoMode()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_0
    invoke-direct {p0, v3}, Lcom/sec/android/app/camera/setting/TimerSettingFragment;->setIntervalDim(Z)V

    :goto_1
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/TimerSettingFragment;->mIntervalSwitch:Landroid/widget/Switch;

    new-instance v4, Lcom/sec/android/app/camera/setting/TimerSettingFragment$1;

    invoke-direct {v4, p0}, Lcom/sec/android/app/camera/setting/TimerSettingFragment$1;-><init>(Lcom/sec/android/app/camera/setting/TimerSettingFragment;)V

    invoke-virtual {v1, v4}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/TimerSettingFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/TimerSettingFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v10, v13, v3}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/TimerSettingFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setFooterDividersEnabled(Z)V

    :cond_1
    new-instance v1, Lcom/sec/android/app/camera/setting/TimerSettingFragment$TimerAdapter;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/TimerSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f04001d

    iget-object v6, p0, Lcom/sec/android/app/camera/setting/TimerSettingFragment;->mList:[Ljava/lang/String;

    invoke-direct {v1, p0, v4, v5, v6}, Lcom/sec/android/app/camera/setting/TimerSettingFragment$TimerAdapter;-><init>(Lcom/sec/android/app/camera/setting/TimerSettingFragment;Landroid/content/Context;I[Ljava/lang/String;)V

    iput-object v1, p0, Lcom/sec/android/app/camera/setting/TimerSettingFragment;->mTimerAdapter:Lcom/sec/android/app/camera/setting/TimerSettingFragment$TimerAdapter;

    iget-object v1, p0, Lcom/sec/android/app/camera/setting/TimerSettingFragment;->mTimerAdapter:Lcom/sec/android/app/camera/setting/TimerSettingFragment$TimerAdapter;

    invoke-virtual {v1, v11}, Lcom/sec/android/app/camera/setting/TimerSettingFragment$TimerAdapter;->setSelectedIndex(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/setting/TimerSettingFragment;->mTimerAdapter:Lcom/sec/android/app/camera/setting/TimerSettingFragment$TimerAdapter;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/setting/TimerSettingFragment$TimerAdapter;->notifyDataSetChanged()V

    iget-object v1, p0, Lcom/sec/android/app/camera/setting/TimerSettingFragment;->mTimerAdapter:Lcom/sec/android/app/camera/setting/TimerSettingFragment$TimerAdapter;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/setting/TimerSettingFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/TimerSettingFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setChoiceMode(I)V

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isLocaleRTL()Z

    move-result v1

    if-eqz v1, :cond_5

    new-instance v0, Landroid/graphics/drawable/InsetDrawable;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/TimerSettingFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/TimerSettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v4, v3

    move v3, v2

    move v5, v2

    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    :goto_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/TimerSettingFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    invoke-direct {p0, v9}, Lcom/sec/android/app/camera/setting/TimerSettingFragment;->setActionBarTitle(Ljava/lang/String;)V

    return-void

    :cond_2
    const-string v1, "607"

    invoke-static {v1}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->setSAScreenId(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/TimerSettingFragment;->getTimer()I

    move-result v1

    if-nez v1, :cond_4

    move v1, v3

    :goto_3
    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/setting/TimerSettingFragment;->setIntervalDim(Z)V

    goto :goto_1

    :cond_4
    move v1, v2

    goto :goto_3

    :cond_5
    new-instance v0, Landroid/graphics/drawable/InsetDrawable;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/TimerSettingFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/TimerSettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v5, v1

    move-object v3, v0

    move v6, v2

    move v7, v2

    move v8, v2

    invoke-direct/range {v3 .. v8}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    goto :goto_2
.end method

.method public static newInstance(I)Lcom/sec/android/app/camera/setting/TimerSettingFragment;
    .locals 3

    new-instance v1, Lcom/sec/android/app/camera/setting/TimerSettingFragment;

    invoke-direct {v1}, Lcom/sec/android/app/camera/setting/TimerSettingFragment;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "type"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/setting/TimerSettingFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v1
.end method

.method private setActionBarTitle(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/TimerSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setInterval(I)V
    .locals 4

    iget v0, p0, Lcom/sec/android/app/camera/setting/TimerSettingFragment;->mTimerType:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/TimerSettingFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_camera_interval_key"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "6082"

    int-to-long v2, p1

    invoke-static {v0, v2, v3}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;J)V

    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/TimerSettingFragment;->mActivity:Lcom/sec/android/app/camera/setting/CameraSettingActivity;

    const/16 v1, 0x7f

    invoke-virtual {v0, v1, p1}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->setButtonDim(II)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/TimerSettingFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_camera_front_interval_key"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "6084"

    int-to-long v2, p1

    invoke-static {v0, v2, v3}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;J)V

    goto :goto_0
.end method

.method private setIntervalDim(Z)V
    .locals 6

    const/4 v5, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const v3, 0x3ebd70a4    # 0.37f

    const-string v0, "TimerSettingFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setIntervalDim "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/TimerSettingFragment;->mIntervalSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v5}, Landroid/widget/Switch;->setEnabled(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/TimerSettingFragment;->mIntervalSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v5}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/TimerSettingFragment;->mIntervalTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/TimerSettingFragment;->mIntervalSummaryTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setAlpha(F)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/TimerSettingFragment;->mIntervalSwitch:Landroid/widget/Switch;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/TimerSettingFragment;->mIntervalSwitch:Landroid/widget/Switch;

    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/TimerSettingFragment;->getInterval()I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/camera/util/Util;->changeIntToBoolean(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/TimerSettingFragment;->mIntervalTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/TimerSettingFragment;->mIntervalSummaryTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setAlpha(F)V

    goto :goto_0
.end method


# virtual methods
.method public getTimerType()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/setting/TimerSettingFragment;->mTimerType:I

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/TimerSettingFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/setting/TimerSettingFragment;->mTimerType:I

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/TimerSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;

    iput-object v0, p0, Lcom/sec/android/app/camera/setting/TimerSettingFragment;->mActivity:Lcom/sec/android/app/camera/setting/CameraSettingActivity;

    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/TimerSettingFragment;->initializeList()V

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/ListFragment;->onAttach(Landroid/content/Context;)V

    check-cast p1, Lcom/sec/android/app/camera/setting/TimerSettingFragment$TimerSelectListener;

    iput-object p1, p0, Lcom/sec/android/app/camera/setting/TimerSettingFragment;->onTimerListener:Lcom/sec/android/app/camera/setting/TimerSettingFragment$TimerSelectListener;

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0f0057

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/TimerSettingFragment;->mIntervalSwitch:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/TimerSettingFragment;->mIntervalSwitch:Landroid/widget/Switch;

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/TimerSettingFragment;->mIntervalSwitch:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 4

    iget-object v1, p0, Lcom/sec/android/app/camera/setting/TimerSettingFragment;->mTimerAdapter:Lcom/sec/android/app/camera/setting/TimerSettingFragment$TimerAdapter;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/setting/TimerSettingFragment$TimerAdapter;->getCount()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/setting/TimerSettingFragment;->mTimerAdapter:Lcom/sec/android/app/camera/setting/TimerSettingFragment$TimerAdapter;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/setting/TimerSettingFragment$TimerAdapter;->getCount()I

    move-result v1

    if-lt p3, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/TimerSettingFragment;->mTimerAdapter:Lcom/sec/android/app/camera/setting/TimerSettingFragment$TimerAdapter;

    invoke-virtual {v1, p3}, Lcom/sec/android/app/camera/setting/TimerSettingFragment$TimerAdapter;->setSelectedIndex(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/setting/TimerSettingFragment;->mTimerAdapter:Lcom/sec/android/app/camera/setting/TimerSettingFragment$TimerAdapter;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/setting/TimerSettingFragment$TimerAdapter;->notifyDataSetChanged()V

    iget v1, p0, Lcom/sec/android/app/camera/setting/TimerSettingFragment;->mTimerType:I

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/camera/setting/TimerSettingFragment;->onTimerListener:Lcom/sec/android/app/camera/setting/TimerSettingFragment$TimerSelectListener;

    invoke-interface {v1, p3}, Lcom/sec/android/app/camera/setting/TimerSettingFragment$TimerSelectListener;->onTimerSelect(I)V

    :goto_1
    sget-boolean v1, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_INTERVAL_CAPTURE:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/sec/android/app/camera/setting/TimerSettingFragment;->mActivity:Lcom/sec/android/app/camera/setting/CameraSettingActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->isAttachImageMode()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/camera/setting/TimerSettingFragment;->mActivity:Lcom/sec/android/app/camera/setting/CameraSettingActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->isAttachVideoMode()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/TimerSettingFragment;->getTimer()I

    move-result v1

    if-nez v1, :cond_4

    const/4 v1, 0x1

    :goto_2
    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/setting/TimerSettingFragment;->setIntervalDim(Z)V

    :cond_2
    :goto_3
    iget v1, p0, Lcom/sec/android/app/camera/setting/TimerSettingFragment;->mTimerType:I

    if-nez v1, :cond_7

    const-string v1, "6081"

    invoke-static {p3}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogIdMap;->getDetailByTimerMode(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/TimerSettingFragment;->onTimerListener:Lcom/sec/android/app/camera/setting/TimerSettingFragment$TimerSelectListener;

    invoke-interface {v1, p3}, Lcom/sec/android/app/camera/setting/TimerSettingFragment$TimerSelectListener;->onFrontTimerSelect(I)V

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    goto :goto_2

    :cond_5
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/TimerSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    if-eqz v1, :cond_6

    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/TimerSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->popBackStack()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_6
    :goto_4
    const v1, 0x7f090227

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/setting/TimerSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/setting/TimerSettingFragment;->setActionBarTitle(Ljava/lang/String;)V

    goto :goto_3

    :catch_0
    move-exception v0

    const-string v1, "TimerSettingFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onListItemClick : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_7
    const-string v1, "6083"

    invoke-static {p3}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogIdMap;->getDetailByTimerMode(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public onPause()V
    .locals 4

    invoke-super {p0}, Landroid/app/ListFragment;->onPause()V

    const/4 v1, 0x6

    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/TimerSettingFragment;->getTimer()I

    move-result v2

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/command/CommandIdMap;->getCommandId(II)I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/camera/command/CmdIdStringMapper;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x7f

    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/TimerSettingFragment;->getInterval()I

    move-result v3

    invoke-static {v2, v3}, Lcom/sec/android/app/camera/command/CommandIdMap;->getCommandId(II)I

    move-result v2

    invoke-static {v2}, Lcom/sec/android/app/camera/command/CmdIdStringMapper;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/TimerSettingFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "G010"

    invoke-static {v2, v0}, Lcom/sec/android/app/camera/util/ContextProviderUtils;->getSettingsSet(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/util/Util;->broadcastGeneralEventForLogging(Landroid/content/Context;Landroid/content/ContentValues;)V

    return-void
.end method

.method public refreshMenu()V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/TimerSettingFragment;->getTimer()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/camera/setting/TimerSettingFragment;->mTimerAdapter:Lcom/sec/android/app/camera/setting/TimerSettingFragment$TimerAdapter;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/setting/TimerSettingFragment$TimerAdapter;->setSelectedIndex(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/setting/TimerSettingFragment;->mTimerAdapter:Lcom/sec/android/app/camera/setting/TimerSettingFragment$TimerAdapter;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/setting/TimerSettingFragment$TimerAdapter;->notifyDataSetChanged()V

    sget-boolean v1, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_INTERVAL_CAPTURE:Z

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/TimerSettingFragment;->getTimer()I

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/setting/TimerSettingFragment;->setIntervalDim(Z)V

    :cond_0
    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
