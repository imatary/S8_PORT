.class public Lcom/android/phone/emergencydialer/SyncGroupItemContainer;
.super Landroid/widget/LinearLayout;
.source "SyncGroupItemContainer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/emergencydialer/SyncGroupItemContainer$1;,
        Lcom/android/phone/emergencydialer/SyncGroupItemContainer$2;,
        Lcom/android/phone/emergencydialer/SyncGroupItemContainer$ActionModeCallback;,
        Lcom/android/phone/emergencydialer/SyncGroupItemContainer$EmergencyContactAsyncQuery;,
        Lcom/android/phone/emergencydialer/SyncGroupItemContainer$ItemType;,
        Lcom/android/phone/emergencydialer/SyncGroupItemContainer$PerformDeleteScan;
    }
.end annotation


# static fields
.field private static mIsContactItemExists:Z

.field private static mIsNoService:Z


# instance fields
.field private final EMERGENCY_CHECKED_COUNT_SHAREDPREF:Ljava/lang/String;

.field private final EMERGENCY_CONTACT_LOCATION_COUNT_SHAREDPREF:Ljava/lang/String;

.field private final EMERGENCY_CONTACT_LOCATION_SHAREDPREF:Ljava/lang/String;

.field public EMERGENCY_CONTACT_MAX_COUNT:I

.field private final EMERGENCY_DELETE_MODE_SHAREDPREF:Ljava/lang/String;

.field private final EMERGENCY_ITEM_CHECKED_SHAREDPREF:Ljava/lang/String;

.field private final EMERGENCY_NORMAL_TYPE_SHAREDPREF:Ljava/lang/String;

.field private final INVALID_ID:I

.field private final INVALID_LONG_ID:J

.field private final LOG_TAG:Ljava/lang/String;

.field private isDrag:Z

.field private isQueryingContactDB:Z

.field public isRealDrag:Z

.field private mActionMode:Landroid/view/ActionMode;

.field private mDownX:I

.field private mDownY:I

.field private mDragImageView:Landroid/widget/ImageView;

.field private mDragItemView:Landroid/view/View;

.field public mEmergencyContactList:Landroid/widget/GridView;

.field private mEmergencyContactsCount:I

.field private mEmergencyDialer:Lcom/android/phone/EmergencyDialer;

.field private mEmergencyEmptyItem:Lcom/android/phone/emergencydialer/EmergencyContactItem;

.field public mExtraCount:I

.field private mHandler:Landroid/os/Handler;

.field private mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

.field private mICEContactCount:I

.field private mItemWidth:I

.field private mLeftScrollBorder:I

.field private mModeCallback:Lcom/android/phone/emergencydialer/SyncGroupItemContainer$ActionModeCallback;

.field private mOffsetLeft:I

.field public mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

.field private mPerformDeleteScanThread:Lcom/android/phone/emergencydialer/SyncGroupItemContainer$PerformDeleteScan;

.field public mPosStartDrag:I

.field private mRightScrollBorder:I

.field public mScreenType:Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ScreenType;

.field private mScrollDistance:I

.field private mScrollLocX:I

.field private mScrollRunnable:Ljava/lang/Runnable;

.field public mSelectedContactIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mStartX:I

.field private mStartY:I

.field private mStatusHeight:I

.field public mSyncGroupItemAdapter:Lcom/android/phone/emergencydialer/SyncGroupItemAdapter;

.field private mToast:Landroid/widget/Toast;

.field private mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private mWindowManager:Landroid/view/WindowManager;

.field private moveX:I

.field private moveY:I


# direct methods
.method static synthetic -get0(Lcom/android/phone/emergencydialer/SyncGroupItemContainer;)Landroid/view/ActionMode;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mActionMode:Landroid/view/ActionMode;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/phone/emergencydialer/SyncGroupItemContainer;)Lcom/android/phone/EmergencyDialer;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mEmergencyDialer:Lcom/android/phone/EmergencyDialer;

    return-object v0
.end method

.method static synthetic -get10(Lcom/android/phone/emergencydialer/SyncGroupItemContainer;)I
    .locals 1

    iget v0, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->moveX:I

    return v0
.end method

.method static synthetic -get2(Lcom/android/phone/emergencydialer/SyncGroupItemContainer;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/phone/emergencydialer/SyncGroupItemContainer;)Landroid/widget/HorizontalScrollView;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/phone/emergencydialer/SyncGroupItemContainer;)I
    .locals 1

    iget v0, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mICEContactCount:I

    return v0
.end method

.method static synthetic -get5()Z
    .locals 1

    sget-boolean v0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mIsNoService:Z

    return v0
.end method

.method static synthetic -get6(Lcom/android/phone/emergencydialer/SyncGroupItemContainer;)I
    .locals 1

    iget v0, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mLeftScrollBorder:I

    return v0
.end method

.method static synthetic -get7(Lcom/android/phone/emergencydialer/SyncGroupItemContainer;)I
    .locals 1

    iget v0, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mRightScrollBorder:I

    return v0
.end method

.method static synthetic -get8(Lcom/android/phone/emergencydialer/SyncGroupItemContainer;)I
    .locals 1

    iget v0, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mScrollDistance:I

    return v0
.end method

.method static synthetic -get9(Lcom/android/phone/emergencydialer/SyncGroupItemContainer;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mScrollRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/phone/emergencydialer/SyncGroupItemContainer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->isQueryingContactDB:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/phone/emergencydialer/SyncGroupItemContainer;Landroid/view/ActionMode;)Landroid/view/ActionMode;
    .locals 0

    iput-object p1, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mActionMode:Landroid/view/ActionMode;

    return-object p1
.end method

.method static synthetic -set2(Lcom/android/phone/emergencydialer/SyncGroupItemContainer;I)I
    .locals 0

    iput p1, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mICEContactCount:I

    return p1
.end method

.method static synthetic -set3(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mIsNoService:Z

    return p0
.end method

.method static synthetic -set4(Lcom/android/phone/emergencydialer/SyncGroupItemContainer;I)I
    .locals 0

    iput p1, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mScrollDistance:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/phone/emergencydialer/SyncGroupItemContainer;Landroid/view/View;I)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->performLongClickHapticFeedback(Landroid/view/View;I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/phone/emergencydialer/SyncGroupItemContainer;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->changeTmpPosition(Z)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/phone/emergencydialer/SyncGroupItemContainer;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->performDone()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    const/4 v4, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const-string/jumbo v0, "EmergencySyncGroupItemContainer"

    iput-object v0, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->LOG_TAG:Ljava/lang/String;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->INVALID_LONG_ID:J

    iput v4, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->INVALID_ID:I

    const-string/jumbo v0, "shared_pref_emergency_contact_item_checked"

    iput-object v0, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->EMERGENCY_ITEM_CHECKED_SHAREDPREF:Ljava/lang/String;

    const-string/jumbo v0, "shared_pref_emergency_contact_screen_type"

    iput-object v0, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->EMERGENCY_NORMAL_TYPE_SHAREDPREF:Ljava/lang/String;

    const-string/jumbo v0, "shared_pref_emergency_contact_delete_mode"

    iput-object v0, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->EMERGENCY_DELETE_MODE_SHAREDPREF:Ljava/lang/String;

    const-string/jumbo v0, "shared_pref_emergency_contact_checked_count"

    iput-object v0, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->EMERGENCY_CHECKED_COUNT_SHAREDPREF:Ljava/lang/String;

    const-string/jumbo v0, "shared_pref_emergency_contact_location"

    iput-object v0, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->EMERGENCY_CONTACT_LOCATION_SHAREDPREF:Ljava/lang/String;

    const-string/jumbo v0, "shared_pref_emergency_contact_location_count"

    iput-object v0, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->EMERGENCY_CONTACT_LOCATION_COUNT_SHAREDPREF:Ljava/lang/String;

    iput v2, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mEmergencyContactsCount:I

    iput v2, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mICEContactCount:I

    const/16 v0, 0x19

    iput v0, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->EMERGENCY_CONTACT_MAX_COUNT:I

    sget-object v0, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ScreenType;->NORMAL:Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ScreenType;

    iput-object v0, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mScreenType:Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ScreenType;

    iput v2, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mExtraCount:I

    iput-boolean v2, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->isQueryingContactDB:Z

    iput-object v3, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mActionMode:Landroid/view/ActionMode;

    iput-object v3, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mModeCallback:Lcom/android/phone/emergencydialer/SyncGroupItemContainer$ActionModeCallback;

    iput-object v3, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mWindowManager:Landroid/view/WindowManager;

    iput-boolean v2, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->isDrag:Z

    iput-boolean v2, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->isRealDrag:Z

    iput-object v3, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mDragImageView:Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mDragItemView:Landroid/view/View;

    iput v4, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mPosStartDrag:I

    iput v4, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mStatusHeight:I

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer$1;

    invoke-direct {v0, p0}, Lcom/android/phone/emergencydialer/SyncGroupItemContainer$1;-><init>(Lcom/android/phone/emergencydialer/SyncGroupItemContainer;)V

    iput-object v0, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    new-instance v0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer$2;

    invoke-direct {v0, p0}, Lcom/android/phone/emergencydialer/SyncGroupItemContainer$2;-><init>(Lcom/android/phone/emergencydialer/SyncGroupItemContainer;)V

    iput-object v0, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mScrollRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    const/4 v4, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string/jumbo v0, "EmergencySyncGroupItemContainer"

    iput-object v0, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->LOG_TAG:Ljava/lang/String;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->INVALID_LONG_ID:J

    iput v4, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->INVALID_ID:I

    const-string/jumbo v0, "shared_pref_emergency_contact_item_checked"

    iput-object v0, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->EMERGENCY_ITEM_CHECKED_SHAREDPREF:Ljava/lang/String;

    const-string/jumbo v0, "shared_pref_emergency_contact_screen_type"

    iput-object v0, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->EMERGENCY_NORMAL_TYPE_SHAREDPREF:Ljava/lang/String;

    const-string/jumbo v0, "shared_pref_emergency_contact_delete_mode"

    iput-object v0, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->EMERGENCY_DELETE_MODE_SHAREDPREF:Ljava/lang/String;

    const-string/jumbo v0, "shared_pref_emergency_contact_checked_count"

    iput-object v0, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->EMERGENCY_CHECKED_COUNT_SHAREDPREF:Ljava/lang/String;

    const-string/jumbo v0, "shared_pref_emergency_contact_location"

    iput-object v0, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->EMERGENCY_CONTACT_LOCATION_SHAREDPREF:Ljava/lang/String;

    const-string/jumbo v0, "shared_pref_emergency_contact_location_count"

    iput-object v0, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->EMERGENCY_CONTACT_LOCATION_COUNT_SHAREDPREF:Ljava/lang/String;

    iput v2, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mEmergencyContactsCount:I

    iput v2, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mICEContactCount:I

    const/16 v0, 0x19

    iput v0, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->EMERGENCY_CONTACT_MAX_COUNT:I

    sget-object v0, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ScreenType;->NORMAL:Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ScreenType;

    iput-object v0, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mScreenType:Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ScreenType;

    iput v2, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mExtraCount:I

    iput-boolean v2, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->isQueryingContactDB:Z

    iput-object v3, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mActionMode:Landroid/view/ActionMode;

    iput-object v3, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mModeCallback:Lcom/android/phone/emergencydialer/SyncGroupItemContainer$ActionModeCallback;

    iput-object v3, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mWindowManager:Landroid/view/WindowManager;

    iput-boolean v2, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->isDrag:Z

    iput-boolean v2, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->isRealDrag:Z

    iput-object v3, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mDragImageView:Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mDragItemView:Landroid/view/View;

    iput v4, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mPosStartDrag:I

    iput v4, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mStatusHeight:I

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer$1;

    invoke-direct {v0, p0}, Lcom/android/phone/emergencydialer/SyncGroupItemContainer$1;-><init>(Lcom/android/phone/emergencydialer/SyncGroupItemContainer;)V

    iput-object v0, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    new-instance v0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer$2;

    invoke-direct {v0, p0}, Lcom/android/phone/emergencydialer/SyncGroupItemContainer$2;-><init>(Lcom/android/phone/emergencydialer/SyncGroupItemContainer;)V

    iput-object v0, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mScrollRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    const/4 v4, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string/jumbo v0, "EmergencySyncGroupItemContainer"

    iput-object v0, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->LOG_TAG:Ljava/lang/String;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->INVALID_LONG_ID:J

    iput v4, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->INVALID_ID:I

    const-string/jumbo v0, "shared_pref_emergency_contact_item_checked"

    iput-object v0, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->EMERGENCY_ITEM_CHECKED_SHAREDPREF:Ljava/lang/String;

    const-string/jumbo v0, "shared_pref_emergency_contact_screen_type"

    iput-object v0, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->EMERGENCY_NORMAL_TYPE_SHAREDPREF:Ljava/lang/String;

    const-string/jumbo v0, "shared_pref_emergency_contact_delete_mode"

    iput-object v0, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->EMERGENCY_DELETE_MODE_SHAREDPREF:Ljava/lang/String;

    const-string/jumbo v0, "shared_pref_emergency_contact_checked_count"

    iput-object v0, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->EMERGENCY_CHECKED_COUNT_SHAREDPREF:Ljava/lang/String;

    const-string/jumbo v0, "shared_pref_emergency_contact_location"

    iput-object v0, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->EMERGENCY_CONTACT_LOCATION_SHAREDPREF:Ljava/lang/String;

    const-string/jumbo v0, "shared_pref_emergency_contact_location_count"

    iput-object v0, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->EMERGENCY_CONTACT_LOCATION_COUNT_SHAREDPREF:Ljava/lang/String;

    iput v2, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mEmergencyContactsCount:I

    iput v2, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mICEContactCount:I

    const/16 v0, 0x19

    iput v0, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->EMERGENCY_CONTACT_MAX_COUNT:I

    sget-object v0, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ScreenType;->NORMAL:Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ScreenType;

    iput-object v0, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mScreenType:Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ScreenType;

    iput v2, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mExtraCount:I

    iput-boolean v2, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->isQueryingContactDB:Z

    iput-object v3, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mActionMode:Landroid/view/ActionMode;

    iput-object v3, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mModeCallback:Lcom/android/phone/emergencydialer/SyncGroupItemContainer$ActionModeCallback;

    iput-object v3, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mWindowManager:Landroid/view/WindowManager;

    iput-boolean v2, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->isDrag:Z

    iput-boolean v2, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->isRealDrag:Z

    iput-object v3, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mDragImageView:Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mDragItemView:Landroid/view/View;

    iput v4, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mPosStartDrag:I

    iput v4, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mStatusHeight:I

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer$1;

    invoke-direct {v0, p0}, Lcom/android/phone/emergencydialer/SyncGroupItemContainer$1;-><init>(Lcom/android/phone/emergencydialer/SyncGroupItemContainer;)V

    iput-object v0, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    new-instance v0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer$2;

    invoke-direct {v0, p0}, Lcom/android/phone/emergencydialer/SyncGroupItemContainer$2;-><init>(Lcom/android/phone/emergencydialer/SyncGroupItemContainer;)V

    iput-object v0, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mScrollRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private changeTmpPosition(Z)V
    .locals 19

    const/4 v3, 0x2

    new-array v15, v3, [I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mEmergencyContactList:Landroid/widget/GridView;

    invoke-virtual {v3, v15}, Landroid/widget/GridView;->getLocationInWindow([I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    const/4 v4, 0x0

    aget v4, v15, v4

    sub-int v14, v3, v4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mEmergencyContactList:Landroid/widget/GridView;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mDownY:I

    invoke-virtual {v3, v14, v4}, Landroid/widget/GridView;->pointToPosition(II)I

    move-result v5

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mPosStartDrag:I

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mItemWidth:I

    if-lez v3, :cond_0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mItemWidth:I

    div-int v5, v14, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mItemWidth:I

    rem-int v3, v14, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mItemWidth:I

    div-int/lit8 v4, v4, 0x2

    if-le v3, v4, :cond_0

    add-int/lit8 v5, v5, 0x1

    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mEmergencyContactList:Landroid/widget/GridView;

    invoke-virtual {v3, v5}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mEmergencyContactList:Landroid/widget/GridView;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mPosStartDrag:I

    invoke-virtual {v3, v4}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    if-eqz v18, :cond_7

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/phone/emergencydialer/SyncGroupItemAdapter$ViewHolder;

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/phone/emergencydialer/SyncGroupItemAdapter$ViewHolder;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mPosStartDrag:I

    if-ne v5, v3, :cond_1

    if-eqz p1, :cond_3

    :cond_1
    move-object/from16 v0, v17

    iget-wide v6, v0, Lcom/android/phone/emergencydialer/SyncGroupItemAdapter$ViewHolder;->mId:J

    const-wide/16 v8, 0x0

    cmp-long v3, v6, v8

    if-ltz v3, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mSyncGroupItemAdapter:Lcom/android/phone/emergencydialer/SyncGroupItemAdapter;

    invoke-virtual {v3, v5}, Lcom/android/phone/emergencydialer/SyncGroupItemAdapter;->setDragingPosition(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mSyncGroupItemAdapter:Lcom/android/phone/emergencydialer/SyncGroupItemAdapter;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mPosStartDrag:I

    iget-wide v6, v2, Lcom/android/phone/emergencydialer/SyncGroupItemAdapter$ViewHolder;->mId:J

    move-object/from16 v0, v17

    iget-wide v8, v0, Lcom/android/phone/emergencydialer/SyncGroupItemAdapter$ViewHolder;->mId:J

    invoke-virtual/range {v3 .. v9}, Lcom/android/phone/emergencydialer/SyncGroupItemAdapter;->changePosition(IIJJ)V

    :cond_2
    :goto_0
    if-eqz p1, :cond_6

    const/4 v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mPosStartDrag:I

    :cond_3
    :goto_1
    return-void

    :cond_4
    move-object/from16 v0, v17

    iget-wide v6, v0, Lcom/android/phone/emergencydialer/SyncGroupItemAdapter$ViewHolder;->mId:J

    const-wide/16 v8, -0x2

    cmp-long v3, v6, v8

    if-nez v3, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mSyncGroupItemAdapter:Lcom/android/phone/emergencydialer/SyncGroupItemAdapter;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/phone/emergencydialer/SyncGroupItemAdapter;->setDragingPosition(I)V

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mSyncGroupItemAdapter:Lcom/android/phone/emergencydialer/SyncGroupItemAdapter;

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mPosStartDrag:I

    iget-wide v10, v2, Lcom/android/phone/emergencydialer/SyncGroupItemAdapter$ViewHolder;->mId:J

    move-object/from16 v0, v17

    iget-wide v12, v0, Lcom/android/phone/emergencydialer/SyncGroupItemAdapter$ViewHolder;->mId:J

    const/4 v9, 0x1

    invoke-virtual/range {v7 .. v13}, Lcom/android/phone/emergencydialer/SyncGroupItemAdapter;->changePosition(IIJJ)V

    goto :goto_0

    :cond_5
    move-object/from16 v0, v17

    iget-wide v6, v0, Lcom/android/phone/emergencydialer/SyncGroupItemAdapter$ViewHolder;->mId:J

    const-wide/16 v8, -0x1

    cmp-long v3, v6, v8

    if-nez v3, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mSyncGroupItemAdapter:Lcom/android/phone/emergencydialer/SyncGroupItemAdapter;

    add-int/lit8 v4, v5, -0x1

    invoke-virtual {v3, v4}, Lcom/android/phone/emergencydialer/SyncGroupItemAdapter;->setDragingPosition(I)V

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mSyncGroupItemAdapter:Lcom/android/phone/emergencydialer/SyncGroupItemAdapter;

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mPosStartDrag:I

    add-int/lit8 v9, v5, -0x1

    iget-wide v10, v2, Lcom/android/phone/emergencydialer/SyncGroupItemAdapter$ViewHolder;->mId:J

    move-object/from16 v0, v17

    iget-wide v12, v0, Lcom/android/phone/emergencydialer/SyncGroupItemAdapter$ViewHolder;->mId:J

    invoke-virtual/range {v7 .. v13}, Lcom/android/phone/emergencydialer/SyncGroupItemAdapter;->changePosition(IIJJ)V

    goto :goto_0

    :cond_6
    move-object/from16 v0, v17

    iget-wide v6, v0, Lcom/android/phone/emergencydialer/SyncGroupItemAdapter$ViewHolder;->mId:J

    const-wide/16 v8, 0x0

    cmp-long v3, v6, v8

    if-ltz v3, :cond_3

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mPosStartDrag:I

    goto :goto_1

    :cond_7
    if-eqz p1, :cond_3

    if-eqz v16, :cond_3

    const/4 v3, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method private createDragView(Landroid/graphics/Bitmap;I)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, -0x2

    invoke-virtual {p0}, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c01fa

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v0, v2

    iget v2, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mStatusHeight:I

    if-gez v2, :cond_0

    invoke-direct {p0}, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->getStatusBarTitleHeight()V

    :cond_0
    const/4 v2, 0x2

    new-array v1, v2, [I

    iget-object v2, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mDragItemView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->getLocationInWindow([I)V

    aget v2, v1, v5

    iput v2, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mStartX:I

    const/4 v2, 0x1

    aget v2, v1, v2

    iget v3, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mStatusHeight:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mStartY:I

    iget v2, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mDownX:I

    iget v3, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mStartX:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mOffsetLeft:I

    invoke-virtual {p0}, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->getWidth()I

    move-result v2

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x10

    iput v2, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mLeftScrollBorder:I

    invoke-virtual {p0}, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->getWidth()I

    move-result v2

    iget v3, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mLeftScrollBorder:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mRightScrollBorder:I

    iget-object v2, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mDragItemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    iget v3, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mPosStartDrag:I

    div-int/2addr v2, v3

    iput v2, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mItemWidth:I

    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v2}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v2, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v2, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v3, -0x3

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->format:I

    iget-object v2, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x33

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object v2, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v3, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mStartX:I

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v2, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v3, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mStartY:I

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v2, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    iget-object v2, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    iget-object v2, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const v3, 0x3e99999a    # 0.3f

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->alpha:F

    iget-object v2, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x18

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    new-instance v2, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mDragImageView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mDragImageView:Landroid/widget/ImageView;

    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v2, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mWindowManager:Landroid/view/WindowManager;

    iget-object v3, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mDragImageView:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v2, v3, v4}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private displayToast(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mToast:Landroid/widget/Toast;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mToast:Landroid/widget/Toast;

    :goto_0
    iget-object v0, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private getStatusBarTitleHeight()V
    .locals 5

    iget-object v2, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mEmergencyDialer:Lcom/android/phone/EmergencyDialer;

    invoke-virtual {v2}, Lcom/android/phone/EmergencyDialer;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    iget v2, v0, Landroid/graphics/Rect;->top:I

    iput v2, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mStatusHeight:I

    const-string/jumbo v2, "EmergencySyncGroupItemContainer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Status bar height : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mStatusHeight:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private init()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    const-string/jumbo v0, "EmergencySyncGroupItemContainer"

    const-string/jumbo v1, "init"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f100123

    invoke-virtual {p0, v0}, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/HorizontalScrollView;

    iput-object v0, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    const v0, 0x7f100051

    invoke-virtual {p0, v0}, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mEmergencyContactList:Landroid/widget/GridView;

    iget-object v0, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mEmergencyContactList:Landroid/widget/GridView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mEmergencyContactList:Landroid/widget/GridView;

    invoke-virtual {v0, v3}, Landroid/widget/GridView;->setVisibility(I)V

    new-instance v0, Lcom/android/phone/emergencydialer/SyncGroupItemAdapter;

    iget-object v1, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mEmergencyContactList:Landroid/widget/GridView;

    invoke-virtual {p0}, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v1, v2, p0}, Lcom/android/phone/emergencydialer/SyncGroupItemAdapter;-><init>(Landroid/widget/GridView;Landroid/content/Context;Lcom/android/phone/emergencydialer/SyncGroupItemContainer;)V

    iput-object v0, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mSyncGroupItemAdapter:Lcom/android/phone/emergencydialer/SyncGroupItemAdapter;

    iget-object v0, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mEmergencyContactList:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mSyncGroupItemAdapter:Lcom/android/phone/emergencydialer/SyncGroupItemAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance v0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer$ActionModeCallback;

    invoke-direct {v0, p0, v4}, Lcom/android/phone/emergencydialer/SyncGroupItemContainer$ActionModeCallback;-><init>(Lcom/android/phone/emergencydialer/SyncGroupItemContainer;Lcom/android/phone/emergencydialer/SyncGroupItemContainer$ActionModeCallback;)V

    iput-object v0, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mModeCallback:Lcom/android/phone/emergencydialer/SyncGroupItemContainer$ActionModeCallback;

    iget-object v0, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mEmergencyContactList:Landroid/widget/GridView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setChoiceMode(I)V

    iget-object v0, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mEmergencyContactList:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mModeCallback:Lcom/android/phone/emergencydialer/SyncGroupItemContainer$ActionModeCallback;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setMultiChoiceModeListener(Landroid/widget/AbsListView$MultiChoiceModeListener;)V

    iget-object v0, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mEmergencyContactList:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    iget-object v0, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mEmergencyContactList:Landroid/widget/GridView;

    invoke-virtual {v0, v3}, Landroid/widget/GridView;->setFocusable(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mSelectedContactIds:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mSelectedContactIds:Ljava/util/ArrayList;

    :cond_1
    invoke-virtual {p0, v3}, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->setEmergencyContactExists(Z)V

    invoke-virtual {p0}, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mWindowManager:Landroid/view/WindowManager;

    return-void
.end method

.method private onDragItem(II)V
    .locals 3

    iget-object v0, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mWindowManager:Landroid/view/WindowManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mDragImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mOffsetLeft:I

    sub-int v1, p1, v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v0, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mStartY:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v0, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mDragImageView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method private onStopDrag()V
    .locals 3

    iget-object v0, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mScrollRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->changeTmpPosition(Z)V

    invoke-direct {p0}, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->removeDragImage()V

    invoke-virtual {p0}, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0d0271

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0d02f2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/utils/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private performDone()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->removeContacts(Z)V

    return-void
.end method

.method private performLongClickHapticFeedback(Landroid/view/View;I)Z
    .locals 5

    const/4 v4, 0x1

    iget-object v1, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mScreenType:Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ScreenType;

    sget-object v2, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ScreenType;->NORMAL:Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ScreenType;

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mEmergencyContactList:Landroid/widget/GridView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mSyncGroupItemAdapter:Lcom/android/phone/emergencydialer/SyncGroupItemAdapter;

    invoke-virtual {v1, v4}, Lcom/android/phone/emergencydialer/SyncGroupItemAdapter;->updateAddButtonForScreenMode(Z)V

    iget-object v1, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mSyncGroupItemAdapter:Lcom/android/phone/emergencydialer/SyncGroupItemAdapter;

    iget-object v1, v1, Lcom/android/phone/emergencydialer/SyncGroupItemAdapter;->mLocList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->setGridView(I)V

    iget-object v1, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mEmergencyContactList:Landroid/widget/GridView;

    invoke-virtual {v1}, Landroid/widget/GridView;->semStartMultiChoiceMode()V

    invoke-virtual {p0}, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0d0270

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0d02ee

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/utils/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Landroid/view/View;->performHapticFeedback(I)Z

    const/4 v1, 0x3

    invoke-direct {p0, v1, p1}, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->sendTouchEvent(ILandroid/view/View;)V

    :cond_0
    :goto_0
    return v4

    :cond_1
    iget-boolean v1, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->isDrag:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mDragItemView:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mDragItemView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    iget-object v1, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mDragItemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mDragItemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->destroyDrawingCache()V

    iget-object v1, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mDragItemView:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0, v0, p2}, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->createDragView(Landroid/graphics/Bitmap;I)V

    iget-object v1, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mScrollRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iput-boolean v4, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->isRealDrag:Z

    goto :goto_0

    :cond_2
    iput-boolean v4, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->isDrag:Z

    iput-object p1, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mDragItemView:Landroid/view/View;

    iput p2, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mPosStartDrag:I

    goto :goto_0
.end method

.method private removeDragImage()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mDragImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mDragImageView:Landroid/widget/ImageView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    iput-object v2, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mDragImageView:Landroid/widget/ImageView;

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


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    const v2, 0x7f0d0270

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mDownX:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mDownY:I

    iget-object v0, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v0

    iput v0, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mScrollLocX:I

    goto :goto_0

    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->moveX:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->moveY:I

    iget-boolean v0, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->isRealDrag:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->moveX:I

    iget v1, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->moveY:I

    invoke-direct {p0, v0, v1}, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->onDragItem(II)V

    const/4 v0, 0x1

    return v0

    :pswitch_2
    iput-boolean v1, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->isDrag:Z

    iget-boolean v0, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->isRealDrag:Z

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->isRealDrag:Z

    invoke-direct {p0}, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->onStopDrag()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mScreenType:Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ScreenType;

    sget-object v1, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ScreenType;->NORMAL:Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ScreenType;

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mScrollLocX:I

    iget-object v1, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v1}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0d02ec

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/utils/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mScrollLocX:I

    iget-object v1, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v1}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v1

    if-le v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0d02ed

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/utils/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public getEmergencyContactExists()Z
    .locals 1

    sget-boolean v0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mIsNoService:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    sget-boolean v0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mIsContactItemExists:Z

    return v0
.end method

.method public getEmergencyContactsCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mSyncGroupItemAdapter:Lcom/android/phone/emergencydialer/SyncGroupItemAdapter;

    invoke-virtual {v0}, Lcom/android/phone/emergencydialer/SyncGroupItemAdapter;->getCount()I

    move-result v0

    return v0
.end method

.method public getEmergencyDialer()Lcom/android/phone/EmergencyDialer;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mEmergencyDialer:Lcom/android/phone/EmergencyDialer;

    return-object v0
.end method

.method public getICEContactCount()I
    .locals 1

    iget v0, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mICEContactCount:I

    return v0
.end method

.method public getScreenType()Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ScreenType;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mScreenType:Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ScreenType;

    return-object v0
.end method

.method public inflateEmergencyEmptyView()V
    .locals 5

    const/4 v4, 0x0

    const v2, 0x7f100122

    invoke-virtual {p0, v2}, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/ViewStub;->setVisibility(I)V

    const v2, 0x7f10010b

    invoke-virtual {p0, v2}, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/android/phone/emergencydialer/EmergencyContactItem;

    iput-object v2, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mEmergencyEmptyItem:Lcom/android/phone/emergencydialer/EmergencyContactItem;

    iget-object v2, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mEmergencyEmptyItem:Lcom/android/phone/emergencydialer/EmergencyContactItem;

    invoke-virtual {v2, p0}, Lcom/android/phone/emergencydialer/EmergencyContactItem;->setParent(Lcom/android/phone/emergencydialer/SyncGroupItemContainer;)V

    iget-object v2, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mEmergencyEmptyItem:Lcom/android/phone/emergencydialer/EmergencyContactItem;

    sget-object v3, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ScreenType;->NORMAL:Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ScreenType;

    invoke-virtual {v2, v3}, Lcom/android/phone/emergencydialer/EmergencyContactItem;->updateContactItem(Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ScreenType;)V

    iget-object v2, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mEmergencyEmptyItem:Lcom/android/phone/emergencydialer/EmergencyContactItem;

    invoke-virtual {v2, v4}, Lcom/android/phone/emergencydialer/EmergencyContactItem;->setVisibility(I)V

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public isExistICEEmergencyContact(Ljava/lang/String;)Z
    .locals 10

    const/4 v9, 0x0

    const/4 v8, 0x0

    sget-object v0, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v4, "title"

    invoke-virtual {v0, v4}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v4, "ICE"

    invoke-virtual {v0, v4}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v4, "contacts"

    invoke-virtual {v0, v4}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v4, "emergency"

    const-string/jumbo v5, "true"

    invoke-virtual {v0, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v4, "android.provider.extra.ADDRESS_BOOK_INDEX"

    const-string/jumbo v5, "true"

    invoke-virtual {v0, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v4, "directory"

    const-string/jumbo v5, "0"

    invoke-virtual {v0, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const-string/jumbo v0, "_id"

    aput-object v0, v2, v9

    const-string/jumbo v0, "display_name"

    const/4 v4, 0x1

    aput-object v0, v2, v4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "display_name = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-lez v0, :cond_0

    const/4 v8, 0x1

    :cond_0
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_0
    return v8

    :catch_0
    move-exception v7

    :try_start_1
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method public isQueryingContactDB()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->isQueryingContactDB:Z

    return v0
.end method

.method public makeEmergencyContactQuery()V
    .locals 2

    const-string/jumbo v0, "EmergencySyncGroupItemContainer"

    const-string/jumbo v1, "makeEmergencyContactQuery"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->isQueryingContactDB:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->isQueryingContactDB:Z

    new-instance v0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer$EmergencyContactAsyncQuery;

    invoke-virtual {p0}, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/phone/emergencydialer/SyncGroupItemContainer$EmergencyContactAsyncQuery;-><init>(Lcom/android/phone/emergencydialer/SyncGroupItemContainer;Landroid/content/ContentResolver;)V

    sget-object v1, Lcom/android/phone/emergencydialer/SyncGroupItemContainer$ItemType;->ICE_CONTACT:Lcom/android/phone/emergencydialer/SyncGroupItemContainer$ItemType;

    invoke-virtual {v0, v1}, Lcom/android/phone/emergencydialer/SyncGroupItemContainer$EmergencyContactAsyncQuery;->startQuery(Lcom/android/phone/emergencydialer/SyncGroupItemContainer$ItemType;)V

    :cond_0
    return-void
.end method

.method public notifyCheckChanged()V
    .locals 1

    iget-object v0, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->invalidate()V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/emergencydialer/EmergencyDialerUtils;->isNoStateInService(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/phone/PhoneUtilsCommon;->isAvailableVoWIFI()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    move v1, v2

    :goto_0
    sput-boolean v1, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mIsNoService:Z

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/emergencydialer/SyncGroupItemAdapter$ViewHolder;

    sget-boolean v1, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mIsNoService:Z

    if-eqz v1, :cond_3

    if-eqz v0, :cond_1

    if-eqz v0, :cond_3

    iget-wide v4, v0, Lcom/android/phone/emergencydialer/SyncGroupItemAdapter$ViewHolder;->mId:J

    const-wide/16 v6, -0x2

    cmp-long v1, v4, v6

    if-eqz v1, :cond_3

    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0d0889

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->displayToast(Ljava/lang/String;)V

    return-void

    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mEmergencyEmptyItem:Lcom/android/phone/emergencydialer/EmergencyContactItem;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mEmergencyEmptyItem:Lcom/android/phone/emergencydialer/EmergencyContactItem;

    invoke-virtual {v1, v2}, Lcom/android/phone/emergencydialer/EmergencyContactItem;->updateEmergencyContact(I)V

    :goto_1
    return-void

    :cond_4
    check-cast p1, Lcom/android/phone/emergencydialer/EmergencyContactItem;

    invoke-virtual {p1, v2}, Lcom/android/phone/emergencydialer/EmergencyContactItem;->updateEmergencyContact(I)V

    goto :goto_1
.end method

.method protected onFinishInflate()V
    .locals 0

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    invoke-direct {p0}, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->init()V

    return-void
.end method

.method public performCancel()V
    .locals 2

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->isRealDrag:Z

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->isDrag:Z

    iput-boolean v1, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->isRealDrag:Z

    invoke-direct {p0}, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->onStopDrag()V

    :cond_0
    iget-object v0, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mSyncGroupItemAdapter:Lcom/android/phone/emergencydialer/SyncGroupItemAdapter;

    invoke-virtual {v0}, Lcom/android/phone/emergencydialer/SyncGroupItemAdapter;->performCancelDone()V

    iget-object v0, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mSyncGroupItemAdapter:Lcom/android/phone/emergencydialer/SyncGroupItemAdapter;

    iget-object v0, v0, Lcom/android/phone/emergencydialer/SyncGroupItemAdapter;->mLocList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->setGridView(I)V

    sget-object v0, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ScreenType;->NORMAL:Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ScreenType;

    invoke-virtual {p0, v0}, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->setScreenType(Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ScreenType;)V

    iget-object v0, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mEmergencyDialer:Lcom/android/phone/EmergencyDialer;

    invoke-virtual {v0}, Lcom/android/phone/EmergencyDialer;->invalidateOptionsMenu()V

    iget-object v0, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    :cond_1
    iget-object v0, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mSelectedContactIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public removeContacts(Z)V
    .locals 2

    new-instance v0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer$PerformDeleteScan;

    invoke-direct {v0, p0}, Lcom/android/phone/emergencydialer/SyncGroupItemContainer$PerformDeleteScan;-><init>(Lcom/android/phone/emergencydialer/SyncGroupItemContainer;)V

    iput-object v0, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mPerformDeleteScanThread:Lcom/android/phone/emergencydialer/SyncGroupItemContainer$PerformDeleteScan;

    iget-object v0, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mPerformDeleteScanThread:Lcom/android/phone/emergencydialer/SyncGroupItemContainer$PerformDeleteScan;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lcom/android/phone/emergencydialer/SyncGroupItemContainer$PerformDeleteScan;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public removeTask()V
    .locals 2

    iget-object v0, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mPerformDeleteScanThread:Lcom/android/phone/emergencydialer/SyncGroupItemContainer$PerformDeleteScan;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mPerformDeleteScanThread:Lcom/android/phone/emergencydialer/SyncGroupItemContainer$PerformDeleteScan;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/phone/emergencydialer/SyncGroupItemContainer$PerformDeleteScan;->cancel(Z)Z

    :cond_0
    return-void
.end method

.method public reset()V
    .locals 2

    iget-object v0, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mScreenType:Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ScreenType;

    sget-object v1, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ScreenType;->REMOVE:Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ScreenType;

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ScreenType;->NORMAL:Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ScreenType;

    iput-object v0, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mScreenType:Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ScreenType;

    iget-object v0, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mSelectedContactIds:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mSelectedContactIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_0
    iget-object v0, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mSyncGroupItemAdapter:Lcom/android/phone/emergencydialer/SyncGroupItemAdapter;

    invoke-virtual {v0}, Lcom/android/phone/emergencydialer/SyncGroupItemAdapter;->notifyDataSetChanged()V

    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ScreenType;->NORMAL:Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ScreenType;

    iput-object v0, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mScreenType:Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ScreenType;

    goto :goto_0
.end method

.method public restoreContactLocation()V
    .locals 10

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string/jumbo v6, "shared_pref_emergency_contact_location_count"

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    iget-object v6, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mSyncGroupItemAdapter:Lcom/android/phone/emergencydialer/SyncGroupItemAdapter;

    iget-object v6, v6, Lcom/android/phone/emergencydialer/SyncGroupItemAdapter;->mLocList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->clear()V

    if-lez v4, :cond_1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "shared_pref_emergency_contact_location"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-wide/16 v8, -0x1

    invoke-interface {v5, v6, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iget-object v6, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mSyncGroupItemAdapter:Lcom/android/phone/emergencydialer/SyncGroupItemAdapter;

    iget-object v6, v6, Lcom/android/phone/emergencydialer/SyncGroupItemAdapter;->mLocList:Ljava/util/List;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-object v6, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mSyncGroupItemAdapter:Lcom/android/phone/emergencydialer/SyncGroupItemAdapter;

    invoke-virtual {v6}, Lcom/android/phone/emergencydialer/SyncGroupItemAdapter;->notifyDataSetChanged()V

    :cond_1
    return-void
.end method

.method public restoreContainerState()V
    .locals 10

    const/4 v8, 0x0

    const-string/jumbo v6, "EmergencySyncGroupItemContainer"

    const-string/jumbo v7, "restoreContainerState"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    iget-object v6, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mScreenType:Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ScreenType;

    sget-object v7, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ScreenType;->REMOVE:Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ScreenType;

    if-ne v6, v7, :cond_4

    iget-object v6, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mEmergencyDialer:Lcom/android/phone/EmergencyDialer;

    if-eqz v6, :cond_0

    const-string/jumbo v6, "shared_pref_emergency_contact_delete_mode"

    invoke-interface {v5, v6, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iget-object v6, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mEmergencyDialer:Lcom/android/phone/EmergencyDialer;

    invoke-virtual {v6, v1}, Lcom/android/phone/EmergencyDialer;->setDeleteModeFromMenu(Z)V

    :cond_0
    const-string/jumbo v6, "shared_pref_emergency_contact_checked_count"

    invoke-interface {v5, v6, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iget-object v6, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mSelectedContactIds:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "shared_pref_emergency_contact_item_checked"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-wide/16 v8, -0x1

    invoke-interface {v5, v6, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iget-object v6, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mSelectedContactIds:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->restoreContactLocation()V

    :cond_2
    :goto_1
    iget-object v6, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mEmergencyDialer:Lcom/android/phone/EmergencyDialer;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mEmergencyDialer:Lcom/android/phone/EmergencyDialer;

    invoke-virtual {v6}, Lcom/android/phone/EmergencyDialer;->invalidateOptionsMenu()V

    invoke-virtual {p0}, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->notifyCheckChanged()V

    :cond_3
    return-void

    :cond_4
    iget-object v6, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mEmergencyDialer:Lcom/android/phone/EmergencyDialer;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mEmergencyDialer:Lcom/android/phone/EmergencyDialer;

    iput-boolean v8, v6, Lcom/android/phone/EmergencyDialer;->mClearedByCode:Z

    goto :goto_1
.end method

.method public setEmergencyContactExists(Z)V
    .locals 0

    sput-boolean p1, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mIsContactItemExists:Z

    return-void
.end method

.method public setEmergencyDialer(Lcom/android/phone/EmergencyDialer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mEmergencyDialer:Lcom/android/phone/EmergencyDialer;

    return-void
.end method

.method public setGridView(I)V
    .locals 6

    invoke-virtual {p0}, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c01fa

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v1, v4

    invoke-virtual {p0}, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c01fb

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v3, v4

    add-int v4, v1, v3

    mul-int/2addr v4, p1

    sub-int v0, v4, v3

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v2, v0, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v4, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mEmergencyContactList:Landroid/widget/GridView;

    invoke-virtual {v4, v2}, Landroid/widget/GridView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mEmergencyContactList:Landroid/widget/GridView;

    invoke-virtual {v4, v1}, Landroid/widget/GridView;->setColumnWidth(I)V

    iget-object v4, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mEmergencyContactList:Landroid/widget/GridView;

    invoke-virtual {v4, v3}, Landroid/widget/GridView;->setHorizontalSpacing(I)V

    iget-object v4, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mEmergencyContactList:Landroid/widget/GridView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/GridView;->setStretchMode(I)V

    iget-object v4, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mEmergencyContactList:Landroid/widget/GridView;

    invoke-virtual {v4, p1}, Landroid/widget/GridView;->setNumColumns(I)V

    return-void
.end method

.method public setScreenType(Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ScreenType;)V
    .locals 1

    iget-object v0, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mScreenType:Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ScreenType;

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mSyncGroupItemAdapter:Lcom/android/phone/emergencydialer/SyncGroupItemAdapter;

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mScreenType:Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ScreenType;

    iget-object v0, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mSyncGroupItemAdapter:Lcom/android/phone/emergencydialer/SyncGroupItemAdapter;

    invoke-virtual {v0}, Lcom/android/phone/emergencydialer/SyncGroupItemAdapter;->notifyDataSetChanged()V

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mScreenType:Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ScreenType;

    goto :goto_0
.end method

.method public storeContactLocation(I)V
    .locals 8

    invoke-virtual {p0}, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v3, "shared_pref_emergency_contact_location_count"

    invoke-interface {v0, v3, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    if-lez p1, :cond_0

    const/4 v1, 0x0

    :goto_0
    iget-object v3, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mSyncGroupItemAdapter:Lcom/android/phone/emergencydialer/SyncGroupItemAdapter;

    iget-object v3, v3, Lcom/android/phone/emergencydialer/SyncGroupItemAdapter;->mLocList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "shared_pref_emergency_contact_location"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v3, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mSyncGroupItemAdapter:Lcom/android/phone/emergencydialer/SyncGroupItemAdapter;

    iget-object v3, v3, Lcom/android/phone/emergencydialer/SyncGroupItemAdapter;->mLocList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-interface {v0, v4, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public storeContainerState()V
    .locals 8

    const-string/jumbo v4, "EmergencySyncGroupItemContainer"

    const-string/jumbo v5, "storeContainerState"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const/4 v0, 0x0

    iget-object v4, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mEmergencyDialer:Lcom/android/phone/EmergencyDialer;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mEmergencyDialer:Lcom/android/phone/EmergencyDialer;

    invoke-virtual {v4}, Lcom/android/phone/EmergencyDialer;->getDeleteModeFromMenu()Z

    move-result v0

    const-string/jumbo v4, "shared_pref_emergency_contact_delete_mode"

    invoke-interface {v1, v4, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    :cond_0
    iget-object v4, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mScreenType:Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ScreenType;

    sget-object v5, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ScreenType;->REMOVE:Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ScreenType;

    if-ne v4, v5, :cond_2

    const-string/jumbo v4, "shared_pref_emergency_contact_checked_count"

    iget-object v5, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mSelectedContactIds:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const/4 v2, 0x0

    :goto_0
    iget-object v4, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mSelectedContactIds:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "shared_pref_emergency_contact_item_checked"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v4, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mSelectedContactIds:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-interface {v1, v5, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mSyncGroupItemAdapter:Lcom/android/phone/emergencydialer/SyncGroupItemAdapter;

    iget-object v4, v4, Lcom/android/phone/emergencydialer/SyncGroupItemAdapter;->mLocList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->storeContactLocation(I)V

    :cond_2
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public updateSelectedId(J)V
    .locals 3

    iget-object v0, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mSelectedContactIds:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mSelectedContactIds:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
