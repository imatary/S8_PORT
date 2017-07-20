.class public Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;
.super Landroid/widget/LinearLayout;
.source "EmergencyContactItemContainer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$EmergencyContactAsyncQuery;,
        Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ItemType;,
        Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ScreenType;
    }
.end annotation


# static fields
.field private static final CONTACT_ID_NAME:[Ljava/lang/String;

.field private static final EMERGENCY_CONTACT_ITEM_VIEW:[I

.field private static mIsContactItemExists:Z

.field private static mIsNoService:Z


# instance fields
.field private final EMERGENCY_DELETE_MODE_SHAREDPREF:Ljava/lang/String;

.field private final EMERGENCY_ITEM_CHECKED_SHAREDPREF:Ljava/lang/String;

.field private final EMERGENCY_NORMAL_TYPE_SHAREDPREF:Ljava/lang/String;

.field private final INVALID_ID:I

.field private final INVALID_LONG_ID:J

.field private final LOG_TAG:Ljava/lang/String;

.field public mContactId:[J

.field private mEmergencyContactsCount:I

.field private mEmergencyDialer:Lcom/android/phone/EmergencyDialer;

.field public mItems:[Lcom/android/phone/emergencydialer/EmergencyContactItem;

.field private mLastClickTime:J

.field private mScreenType:Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ScreenType;

.field private mToast:Landroid/widget/Toast;


# direct methods
.method static synthetic -get0(Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;)I
    .locals 1

    iget v0, p0, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;->mEmergencyContactsCount:I

    return v0
.end method

.method static synthetic -wrap0(Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;->setContactsId()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 5

    const v0, 0x7f100113

    const v1, 0x7f100114

    const v2, 0x7f100115

    const v3, 0x7f100116

    const v4, 0x7f100117

    filled-new-array {v0, v1, v2, v3, v4}, [I

    move-result-object v0

    sput-object v0, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;->EMERGENCY_CONTACT_ITEM_VIEW:[I

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "emergency_contact_position_zero"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "emergency_contact_position_one"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "emergency_contact_position_two"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, "emergency_contact_position_three"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string/jumbo v1, "emergency_contact_position_four"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;->CONTACT_ID_NAME:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const-string/jumbo v0, "EmergencyContactItemContainer"

    iput-object v0, p0, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;->LOG_TAG:Ljava/lang/String;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;->INVALID_LONG_ID:J

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;->INVALID_ID:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;->mLastClickTime:J

    const-string/jumbo v0, "shared_pref_emergency_contact_item_checked"

    iput-object v0, p0, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;->EMERGENCY_ITEM_CHECKED_SHAREDPREF:Ljava/lang/String;

    const-string/jumbo v0, "shared_pref_emergency_contact_screen_type"

    iput-object v0, p0, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;->EMERGENCY_NORMAL_TYPE_SHAREDPREF:Ljava/lang/String;

    const-string/jumbo v0, "shared_pref_emergency_contact_delete_mode"

    iput-object v0, p0, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;->EMERGENCY_DELETE_MODE_SHAREDPREF:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;->mEmergencyContactsCount:I

    sget-object v0, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ScreenType;->NORMAL:Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ScreenType;

    iput-object v0, p0, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;->mScreenType:Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ScreenType;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string/jumbo v0, "EmergencyContactItemContainer"

    iput-object v0, p0, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;->LOG_TAG:Ljava/lang/String;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;->INVALID_LONG_ID:J

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;->INVALID_ID:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;->mLastClickTime:J

    const-string/jumbo v0, "shared_pref_emergency_contact_item_checked"

    iput-object v0, p0, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;->EMERGENCY_ITEM_CHECKED_SHAREDPREF:Ljava/lang/String;

    const-string/jumbo v0, "shared_pref_emergency_contact_screen_type"

    iput-object v0, p0, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;->EMERGENCY_NORMAL_TYPE_SHAREDPREF:Ljava/lang/String;

    const-string/jumbo v0, "shared_pref_emergency_contact_delete_mode"

    iput-object v0, p0, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;->EMERGENCY_DELETE_MODE_SHAREDPREF:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;->mEmergencyContactsCount:I

    sget-object v0, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ScreenType;->NORMAL:Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ScreenType;

    iput-object v0, p0, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;->mScreenType:Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ScreenType;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string/jumbo v0, "EmergencyContactItemContainer"

    iput-object v0, p0, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;->LOG_TAG:Ljava/lang/String;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;->INVALID_LONG_ID:J

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;->INVALID_ID:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;->mLastClickTime:J

    const-string/jumbo v0, "shared_pref_emergency_contact_item_checked"

    iput-object v0, p0, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;->EMERGENCY_ITEM_CHECKED_SHAREDPREF:Ljava/lang/String;

    const-string/jumbo v0, "shared_pref_emergency_contact_screen_type"

    iput-object v0, p0, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;->EMERGENCY_NORMAL_TYPE_SHAREDPREF:Ljava/lang/String;

    const-string/jumbo v0, "shared_pref_emergency_contact_delete_mode"

    iput-object v0, p0, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;->EMERGENCY_DELETE_MODE_SHAREDPREF:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;->mEmergencyContactsCount:I

    sget-object v0, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ScreenType;->NORMAL:Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ScreenType;

    iput-object v0, p0, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;->mScreenType:Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ScreenType;

    return-void
.end method

.method private displayToast(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;->mToast:Landroid/widget/Toast;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;->mToast:Landroid/widget/Toast;

    :goto_0
    iget-object v0, p0, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private getEmergencyContactItemViewIndex(I)I
    .locals 1

    packed-switch p1, :pswitch_data_0

    const/4 v0, -0x1

    return v0

    :pswitch_0
    const/4 v0, 0x0

    return v0

    :pswitch_1
    const/4 v0, 0x1

    return v0

    :pswitch_2
    const/4 v0, 0x2

    return v0

    :pswitch_3
    const/4 v0, 0x3

    return v0

    :pswitch_4
    const/4 v0, 0x4

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x7f100113
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private init()V
    .locals 4

    const-string/jumbo v2, "EmergencyContactItemContainer"

    const-string/jumbo v3, "init"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f0007

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;->mEmergencyContactsCount:I

    iget v2, p0, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;->mEmergencyContactsCount:I

    new-array v2, v2, [Lcom/android/phone/emergencydialer/EmergencyContactItem;

    iput-object v2, p0, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;->mItems:[Lcom/android/phone/emergencydialer/EmergencyContactItem;

    iget v2, p0, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;->mEmergencyContactsCount:I

    new-array v2, v2, [J

    iput-object v2, p0, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;->mContactId:[J

    invoke-virtual {p0}, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;->mEmergencyContactsCount:I

    if-ge v1, v2, :cond_0

    iget-object v3, p0, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;->mItems:[Lcom/android/phone/emergencydialer/EmergencyContactItem;

    invoke-virtual {p0, v1}, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/phone/emergencydialer/EmergencyContactItem;

    aput-object v2, v3, v1

    iget-object v2, p0, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;->mItems:[Lcom/android/phone/emergencydialer/EmergencyContactItem;

    aget-object v2, v2, v1

    invoke-virtual {v2, p0}, Lcom/android/phone/emergencydialer/EmergencyContactItem;->setParent(Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;)V

    iget-object v2, p0, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;->mItems:[Lcom/android/phone/emergencydialer/EmergencyContactItem;

    aget-object v2, v2, v1

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/phone/emergencydialer/EmergencyContactItem;->setVisibility(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;->setupEmergencyContactItem()V

    return-void
.end method

.method private makeEmergencyContactList(I)V
    .locals 8

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;->mItems:[Lcom/android/phone/emergencydialer/EmergencyContactItem;

    aget-object v0, v0, p1

    sget-object v1, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ItemType;->EMERGENCY_CONTACT_LIST:Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ItemType;

    const-wide/16 v2, -0x1

    const/4 v6, -0x1

    const/4 v7, 0x0

    move-object v5, v4

    invoke-virtual/range {v0 .. v7}, Lcom/android/phone/emergencydialer/EmergencyContactItem;->setItem(Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ItemType;JLjava/lang/String;Ljava/lang/String;IZ)V

    invoke-virtual {p0}, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;->restoreContainerState()V

    return-void
.end method

.method private performLongClickHapticFeedback(Landroid/view/View;I)V
    .locals 5

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;->mItems:[Lcom/android/phone/emergencydialer/EmergencyContactItem;

    aget-object v0, v0, p2

    invoke-virtual {v0}, Lcom/android/phone/emergencydialer/EmergencyContactItem;->getItemId()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;->mScreenType:Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ScreenType;

    sget-object v1, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ScreenType;->NORMAL:Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ScreenType;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;->mItems:[Lcom/android/phone/emergencydialer/EmergencyContactItem;

    aget-object v0, v0, p2

    invoke-virtual {v0, v4}, Lcom/android/phone/emergencydialer/EmergencyContactItem;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;->mEmergencyDialer:Lcom/android/phone/EmergencyDialer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;->mEmergencyDialer:Lcom/android/phone/EmergencyDialer;

    invoke-virtual {v0}, Lcom/android/phone/EmergencyDialer;->getDummyListView()Landroid/widget/ListView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;->mEmergencyDialer:Lcom/android/phone/EmergencyDialer;

    invoke-virtual {v0}, Lcom/android/phone/EmergencyDialer;->getDummyListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->semStartMultiChoiceMode()V

    invoke-virtual {p1, v4}, Landroid/view/View;->performHapticFeedback(I)Z

    const/4 v0, 0x3

    invoke-direct {p0, v0, p1}, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;->sendTouchEvent(ILandroid/view/View;)V

    :cond_0
    return-void
.end method

.method private sendTouchEvent(ILandroid/view/View;)V
    .locals 9

    const/4 v5, 0x0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v7, 0x0

    move v4, p1

    move v6, v5

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    if-eqz p2, :cond_0

    invoke-virtual {p2, v8}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_0
    invoke-virtual {v8}, Landroid/view/MotionEvent;->recycle()V

    return-void
.end method

.method private setContactsId()V
    .locals 6

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;->mEmergencyContactsCount:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;->mContactId:[J

    invoke-virtual {p0}, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;->CONTACT_ID_NAME:[Ljava/lang/String;

    aget-object v3, v3, v0

    const-wide/16 v4, -0x1

    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v2

    aput-wide v2, v1, v0

    const-string/jumbo v1, "EmergencyContactItemContainer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setContactsId : id["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;->mContactId:[J

    aget-wide v4, v3, v0

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private setupEmergencyContactItem()V
    .locals 7

    const/4 v3, 0x0

    sget-object v4, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;->EMERGENCY_CONTACT_ITEM_VIEW:[I

    array-length v5, v4

    move v2, v3

    :goto_0
    if-ge v2, v5, :cond_1

    aget v0, v4, v2

    invoke-virtual {p0, v0}, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    const-string/jumbo v6, "support_folder_hardkey"

    invoke-static {v6}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v1, v3}, Landroid/view/View;->setFocusable(Z)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v6, 0x1

    invoke-virtual {v1, v6}, Landroid/view/View;->setFocusable(Z)V

    goto :goto_1

    :cond_1
    return-void
.end method


# virtual methods
.method public getEmergencyContactExists()Z
    .locals 1

    sget-boolean v0, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;->mIsNoService:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    sget-boolean v0, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;->mIsContactItemExists:Z

    return v0
.end method

.method public getEmergencyContactsCount()I
    .locals 1

    iget v0, p0, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;->mEmergencyContactsCount:I

    return v0
.end method

.method public getEmergencyDialer()Lcom/android/phone/EmergencyDialer;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;->mEmergencyDialer:Lcom/android/phone/EmergencyDialer;

    return-object v0
.end method

.method public getScreenType()Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ScreenType;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;->mScreenType:Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ScreenType;

    return-object v0
.end method

.method public makeEmergencyContactQuery()V
    .locals 2

    const-string/jumbo v0, "EmergencyContactItemContainer"

    const-string/jumbo v1, "makeEmergencyContactQuery"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/emergencydialer/EmergencyDialerUtils;->isNoStateInService(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;->mIsNoService:Z

    sget-boolean v0, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;->mIsNoService:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/emergencydialer/EmergencyDialerUtils;->isSoftPhoneEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$EmergencyContactAsyncQuery;

    invoke-virtual {p0}, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$EmergencyContactAsyncQuery;-><init>(Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;Landroid/content/ContentResolver;)V

    sget-object v1, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ItemType;->EMERGENCY_CONTACT:Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ItemType;

    invoke-virtual {v0, v1}, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$EmergencyContactAsyncQuery;->startQuery(Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ItemType;)V

    :cond_1
    iget v0, p0, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;->mEmergencyContactsCount:I

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;->makeEmergencyContactList(I)V

    return-void
.end method

.method public notifyCheckChanged()V
    .locals 1

    iget-object v0, p0, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;->mEmergencyDialer:Lcom/android/phone/EmergencyDialer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;->mEmergencyDialer:Lcom/android/phone/EmergencyDialer;

    invoke-virtual {v0}, Lcom/android/phone/EmergencyDialer;->notifyCheckChanged()V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6

    const-string/jumbo v2, "EmergencyContactItemContainer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onClick(View.getId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;->getScreenType()Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ScreenType;

    move-result-object v2

    sget-object v3, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ScreenType;->NORMAL:Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ScreenType;

    if-ne v2, v3, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;->mLastClickTime:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    const-string/jumbo v2, "EmergencyContactItemContainer"

    const-string/jumbo v3, "Return in case of multiple clicks."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;->mLastClickTime:J

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;->getEmergencyContactItemViewIndex(I)I

    move-result v0

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;->mEmergencyContactsCount:I

    add-int/lit8 v2, v2, -0x1

    if-ne v0, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/emergencydialer/EmergencyDialerUtils;->isNoStateInService(Landroid/content/Context;)Z

    move-result v2

    sput-boolean v2, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;->mIsNoService:Z

    sget-boolean v2, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;->mIsNoService:Z

    if-eqz v2, :cond_2

    if-eqz v1, :cond_4

    :cond_2
    const/4 v2, -0x1

    if-eq v0, v2, :cond_3

    iget-object v2, p0, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;->mItems:[Lcom/android/phone/emergencydialer/EmergencyContactItem;

    aget-object v2, v2, v0

    invoke-virtual {v2, v0}, Lcom/android/phone/emergencydialer/EmergencyContactItem;->updateEmergencyContact(I)V

    :cond_3
    return-void

    :cond_4
    invoke-virtual {p0}, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/emergencydialer/EmergencyDialerUtils;->isSoftPhoneEnabled(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p0}, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0d0825

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;->displayToast(Ljava/lang/String;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    invoke-direct {p0}, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;->init()V

    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;->getEmergencyContactItemViewIndex(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-direct {p0, p1, v0}, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;->performLongClickHapticFeedback(Landroid/view/View;I)V

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public removeContacts(Z)V
    .locals 4

    const-string/jumbo v1, "EmergencyContactItemContainer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "removeContacts : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;->mItems:[Lcom/android/phone/emergencydialer/EmergencyContactItem;

    const/4 v1, 0x0

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/phone/emergencydialer/EmergencyContactItem;->removeEmergencyContact(Z)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0d05c3

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;->displayToast(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public reset()V
    .locals 4

    iget-object v2, p0, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;->mItems:[Lcom/android/phone/emergencydialer/EmergencyContactItem;

    const/4 v1, 0x0

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/phone/emergencydialer/EmergencyContactItem;->reset()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ScreenType;->NORMAL:Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ScreenType;

    iput-object v1, p0, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;->mScreenType:Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ScreenType;

    return-void
.end method

.method public restoreContainerState()V
    .locals 8

    const/4 v6, 0x1

    const/4 v7, 0x0

    const-string/jumbo v4, "EmergencyContactItemContainer"

    const-string/jumbo v5, "restoreContainerState"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string/jumbo v4, "shared_pref_emergency_contact_screen_type"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v4, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ScreenType;->NORMAL:Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ScreenType;

    :goto_0
    invoke-virtual {p0, v4}, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;->setScreenType(Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ScreenType;)V

    if-nez v2, :cond_2

    iget-object v4, p0, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;->mEmergencyDialer:Lcom/android/phone/EmergencyDialer;

    if-eqz v4, :cond_0

    const-string/jumbo v4, "shared_pref_emergency_contact_delete_mode"

    invoke-interface {v3, v4, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iget-object v4, p0, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;->mEmergencyDialer:Lcom/android/phone/EmergencyDialer;

    invoke-virtual {v4, v6}, Lcom/android/phone/EmergencyDialer;->setMultiMode(Z)V

    iget-object v4, p0, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;->mEmergencyDialer:Lcom/android/phone/EmergencyDialer;

    invoke-virtual {v4, v0}, Lcom/android/phone/EmergencyDialer;->setDeleteModeFromMenu(Z)V

    :cond_0
    const/4 v1, 0x0

    :goto_1
    iget v4, p0, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;->mEmergencyContactsCount:I

    if-ge v1, v4, :cond_2

    iget-object v4, p0, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;->mItems:[Lcom/android/phone/emergencydialer/EmergencyContactItem;

    aget-object v4, v4, v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "shared_pref_emergency_contact_item_checked"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/phone/emergencydialer/EmergencyContactItem;->setChecked(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    sget-object v4, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ScreenType;->REMOVE:Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ScreenType;

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;->mEmergencyDialer:Lcom/android/phone/EmergencyDialer;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;->mEmergencyDialer:Lcom/android/phone/EmergencyDialer;

    invoke-virtual {v4}, Lcom/android/phone/EmergencyDialer;->invalidateOptionsMenu()V

    iget-object v4, p0, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;->mEmergencyDialer:Lcom/android/phone/EmergencyDialer;

    invoke-virtual {v4}, Lcom/android/phone/EmergencyDialer;->notifyCheckChanged()V

    :cond_3
    return-void
.end method

.method public setEmergencyContactExists(Z)V
    .locals 3

    sput-boolean p1, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;->mIsContactItemExists:Z

    const-string/jumbo v0, "EmergencyContactItemContainer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mIsContactItemExists : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;->mIsContactItemExists:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setEmergencyDialer(Lcom/android/phone/EmergencyDialer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;->mEmergencyDialer:Lcom/android/phone/EmergencyDialer;

    return-void
.end method

.method public setScreenType(Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ScreenType;)V
    .locals 3

    const-string/jumbo v0, "EmergencyContactItemContainer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setScreenType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;->mScreenType:Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ScreenType;

    invoke-virtual {p0}, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;->updateContactItemContainer()V

    return-void
.end method

.method public storeContainerState()V
    .locals 7

    const-string/jumbo v5, "EmergencyContactItemContainer"

    const-string/jumbo v6, "storeContainerState"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const/4 v0, 0x0

    iget-object v5, p0, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;->mEmergencyDialer:Lcom/android/phone/EmergencyDialer;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;->mEmergencyDialer:Lcom/android/phone/EmergencyDialer;

    invoke-virtual {v5}, Lcom/android/phone/EmergencyDialer;->getDeleteModeFromMenu()Z

    move-result v0

    const-string/jumbo v5, "shared_pref_emergency_contact_delete_mode"

    invoke-interface {v1, v5, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;->getScreenType()Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ScreenType;

    move-result-object v5

    sget-object v6, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ScreenType;->NORMAL:Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ScreenType;

    if-ne v5, v6, :cond_1

    const/4 v3, 0x1

    :goto_0
    const-string/jumbo v5, "shared_pref_emergency_contact_screen_type"

    invoke-interface {v1, v5, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    if-nez v3, :cond_2

    const/4 v2, 0x0

    :goto_1
    iget v5, p0, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;->mEmergencyContactsCount:I

    if-ge v2, v5, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "shared_pref_emergency_contact_item_checked"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;->mItems:[Lcom/android/phone/emergencydialer/EmergencyContactItem;

    aget-object v6, v6, v2

    invoke-virtual {v6}, Lcom/android/phone/emergencydialer/EmergencyContactItem;->isChecked()Z

    move-result v6

    invoke-interface {v1, v5, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    :cond_2
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public updateContactItemContainer()V
    .locals 10

    const-wide/16 v8, -0x1

    const/4 v3, 0x0

    const-string/jumbo v2, "EmergencyContactItemContainer"

    const-string/jumbo v4, "updateContactItemContainer : "

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;->mItems:[Lcom/android/phone/emergencydialer/EmergencyContactItem;

    array-length v5, v4

    move v2, v3

    :goto_0
    if-ge v2, v5, :cond_1

    aget-object v1, v4, v2

    if-eqz v1, :cond_0

    iget-object v6, p0, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;->mScreenType:Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ScreenType;

    invoke-virtual {v1, v6}, Lcom/android/phone/emergencydialer/EmergencyContactItem;->updateContactItem(Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ScreenType;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iget v2, p0, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;->mEmergencyContactsCount:I

    if-ge v0, v2, :cond_3

    iget-object v2, p0, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;->mItems:[Lcom/android/phone/emergencydialer/EmergencyContactItem;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/android/phone/emergencydialer/EmergencyContactItem;->getItemId()J

    move-result-wide v4

    cmp-long v2, v4, v8

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;->mItems:[Lcom/android/phone/emergencydialer/EmergencyContactItem;

    aget-object v2, v2, v0

    invoke-virtual {v2, v3}, Lcom/android/phone/emergencydialer/EmergencyContactItem;->setChecked(Z)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v3}, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;->setEmergencyContactExists(Z)V

    const/4 v0, 0x0

    :goto_2
    iget v2, p0, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;->mEmergencyContactsCount:I

    if-ge v0, v2, :cond_4

    iget-object v2, p0, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;->mItems:[Lcom/android/phone/emergencydialer/EmergencyContactItem;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/android/phone/emergencydialer/EmergencyContactItem;->getItemId()J

    move-result-wide v2

    cmp-long v2, v2, v8

    if-eqz v2, :cond_5

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;->setEmergencyContactExists(Z)V

    :cond_4
    return-void

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method
