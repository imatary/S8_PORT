.class public final Lcom/android/providers/media/RingtonePickerActivity;
.super Landroid/app/Activity;
.source "RingtonePickerActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/media/RingtonePickerActivity$1;,
        Lcom/android/providers/media/RingtonePickerActivity$2;,
        Lcom/android/providers/media/RingtonePickerActivity$3;
    }
.end annotation


# static fields
.field private static final ACTION_SIM_HOT_SWAP:Ljava/lang/String; = "com.samsung.intent.action.SIMHOTSWAP"

.field private static final ALARM_TONE:Ljava/lang/String; = "alarm_tone"

.field private static final CALL_SETTING:Ljava/lang/String; = "call_setting"

.field private static final CALL_SETTING_RINGTONES:Ljava/lang/String; = "call_setting_ringtones"

.field private static final CLOCK_CHINA:Ljava/lang/String; = "clock_china"

.field private static final CONTACTS:Ljava/lang/String; = "com.android.contacts"

.field private static final DELAY_MS_SELECTION_PLAYED:I = 0x12c

.field private static final EMAIL:Ljava/lang/String; = "Email"

.field private static final ICON_UNIFY_THEME_PKG_LIST:[Ljava/lang/String;

.field private static final MESSAGE:Ljava/lang/String; = "com.android.mms"

.field private static final POS_UNKNOWN:I = -0x1

.field private static final SAVE_CLICKED_POS:Ljava/lang/String; = "clicked_pos"

.field private static final SPLANNER:Ljava/lang/String; = "splanner"

.field private static final TAG:Ljava/lang/String; = "RingtonePickerActivity"

.field private static mHandler:Landroid/os/Handler;

.field private static sPlayingRingtone:Landroid/media/Ringtone;

.field private static final supportSmartIconUnify:Z


# instance fields
.field private mAddItem:Landroid/widget/TextView;

.field private mAddPos:I

.field private mAppName:Ljava/lang/String;

.field private mAttributesFlags:I

.field private mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mCheckedItem:I

.field private mClickedPos:I

.field private mCurrentRingtone:Landroid/media/Ringtone;

.field private mCursor:Landroid/database/Cursor;

.field private mDefaultItem:Landroid/widget/CheckedTextView;

.field private mDefaultRingtone:Landroid/media/Ringtone;

.field private mDefaultRingtonePos:I

.field private mDrmManagerClient:Landroid/drm/DrmManagerClient;

.field private mExistingUri:Landroid/net/Uri;

.field private mHasAddItem:Z

.field private mHasDefaultItem:Z

.field private mHasSilentItem:Z

.field private mIsClockChina:Z

.field private mListAdapter:Landroid/widget/ListAdapter;

.field private mListView:Landroid/widget/ListView;

.field private mOffset:I

.field private mRingtoneClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mRingtoneManager:Landroid/media/RingtoneManager;

.field private mSampleRingtonePos:I

.field private mSaveRingtone:Ljava/lang/Runnable;

.field private mSilentItem:Landroid/widget/CheckedTextView;

.field private mSilentPos:I

.field private mStaticItemCount:I

.field private mStreamType:I

.field private mSync:Z

.field private mType:I

.field private mUriForDefaultItem:Landroid/net/Uri;

.field receiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static synthetic -get0(Lcom/android/providers/media/RingtonePickerActivity;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/providers/media/RingtonePickerActivity;->mAddItem:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/providers/media/RingtonePickerActivity;)I
    .locals 1

    iget v0, p0, Lcom/android/providers/media/RingtonePickerActivity;->mAddPos:I

    return v0
.end method

.method static synthetic -get10(Lcom/android/providers/media/RingtonePickerActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/providers/media/RingtonePickerActivity;->mSync:Z

    return v0
.end method

.method static synthetic -get11(Lcom/android/providers/media/RingtonePickerActivity;)Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/android/providers/media/RingtonePickerActivity;->mUriForDefaultItem:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/providers/media/RingtonePickerActivity;)I
    .locals 1

    iget v0, p0, Lcom/android/providers/media/RingtonePickerActivity;->mClickedPos:I

    return v0
.end method

.method static synthetic -get3(Lcom/android/providers/media/RingtonePickerActivity;)Landroid/widget/CheckedTextView;
    .locals 1

    iget-object v0, p0, Lcom/android/providers/media/RingtonePickerActivity;->mDefaultItem:Landroid/widget/CheckedTextView;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/providers/media/RingtonePickerActivity;)I
    .locals 1

    iget v0, p0, Lcom/android/providers/media/RingtonePickerActivity;->mDefaultRingtonePos:I

    return v0
.end method

.method static synthetic -get5(Lcom/android/providers/media/RingtonePickerActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/providers/media/RingtonePickerActivity;->mHasAddItem:Z

    return v0
.end method

.method static synthetic -get6(Lcom/android/providers/media/RingtonePickerActivity;)Landroid/media/RingtoneManager;
    .locals 1

    iget-object v0, p0, Lcom/android/providers/media/RingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/providers/media/RingtonePickerActivity;)I
    .locals 1

    iget v0, p0, Lcom/android/providers/media/RingtonePickerActivity;->mSampleRingtonePos:I

    return v0
.end method

.method static synthetic -get8(Lcom/android/providers/media/RingtonePickerActivity;)Landroid/widget/CheckedTextView;
    .locals 1

    iget-object v0, p0, Lcom/android/providers/media/RingtonePickerActivity;->mSilentItem:Landroid/widget/CheckedTextView;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/providers/media/RingtonePickerActivity;)I
    .locals 1

    iget v0, p0, Lcom/android/providers/media/RingtonePickerActivity;->mSilentPos:I

    return v0
.end method

.method static synthetic -set0(Lcom/android/providers/media/RingtonePickerActivity;I)I
    .locals 0

    iput p1, p0, Lcom/android/providers/media/RingtonePickerActivity;->mClickedPos:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/providers/media/RingtonePickerActivity;Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/providers/media/RingtonePickerActivity;->canSetRingtone(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/providers/media/RingtonePickerActivity;I)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/providers/media/RingtonePickerActivity;->getRingtoneManagerPosition(I)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/android/providers/media/RingtonePickerActivity;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/providers/media/RingtonePickerActivity;->playRingtone(II)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/providers/media/RingtonePickerActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/providers/media/RingtonePickerActivity;->showToast(I)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/providers/media/RingtonePickerActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/providers/media/RingtonePickerActivity;->stopAnyPlayingRingtone()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/android/providers/media/RingtonePickerActivity;->mHandler:Landroid/os/Handler;

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string/jumbo v1, "CscFeature_Framework_ConfigAppIconStyle"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/providers/media/RingtonePickerActivity;->supportSmartIconUnify:Z

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "com.samsung.tungsten_black.appicon"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.samsung.colorful_indie"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.samsung.www.PinkRuby.appicon"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.samsung.www.Indie.appicon"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.samsung.www.GoldPlatinum.appicon"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/providers/media/RingtonePickerActivity;->ICON_UNIFY_THEME_PKG_LIST:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-object v1, p0, Lcom/android/providers/media/RingtonePickerActivity;->receiver:Landroid/content/BroadcastReceiver;

    iput v0, p0, Lcom/android/providers/media/RingtonePickerActivity;->mSilentPos:I

    iput v0, p0, Lcom/android/providers/media/RingtonePickerActivity;->mDefaultRingtonePos:I

    iput v0, p0, Lcom/android/providers/media/RingtonePickerActivity;->mClickedPos:I

    iput v0, p0, Lcom/android/providers/media/RingtonePickerActivity;->mSampleRingtonePos:I

    iput v2, p0, Lcom/android/providers/media/RingtonePickerActivity;->mOffset:I

    iput-boolean v2, p0, Lcom/android/providers/media/RingtonePickerActivity;->mHasAddItem:Z

    iput v0, p0, Lcom/android/providers/media/RingtonePickerActivity;->mAddPos:I

    iput-boolean v2, p0, Lcom/android/providers/media/RingtonePickerActivity;->mSync:Z

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/providers/media/RingtonePickerActivity;->mStreamType:I

    iput-boolean v2, p0, Lcom/android/providers/media/RingtonePickerActivity;->mIsClockChina:Z

    iput-object v1, p0, Lcom/android/providers/media/RingtonePickerActivity;->mSilentItem:Landroid/widget/CheckedTextView;

    iput-object v1, p0, Lcom/android/providers/media/RingtonePickerActivity;->mDefaultItem:Landroid/widget/CheckedTextView;

    iput-object v1, p0, Lcom/android/providers/media/RingtonePickerActivity;->mAddItem:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/providers/media/RingtonePickerActivity;->mAppName:Ljava/lang/String;

    new-instance v0, Lcom/android/providers/media/RingtonePickerActivity$1;

    invoke-direct {v0, p0}, Lcom/android/providers/media/RingtonePickerActivity$1;-><init>(Lcom/android/providers/media/RingtonePickerActivity;)V

    iput-object v0, p0, Lcom/android/providers/media/RingtonePickerActivity;->mRingtoneClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    iput-object v1, p0, Lcom/android/providers/media/RingtonePickerActivity;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    new-instance v0, Lcom/android/providers/media/RingtonePickerActivity$2;

    invoke-direct {v0, p0}, Lcom/android/providers/media/RingtonePickerActivity$2;-><init>(Lcom/android/providers/media/RingtonePickerActivity;)V

    iput-object v0, p0, Lcom/android/providers/media/RingtonePickerActivity;->mSaveRingtone:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/providers/media/RingtonePickerActivity$3;

    invoke-direct {v0, p0}, Lcom/android/providers/media/RingtonePickerActivity$3;-><init>(Lcom/android/providers/media/RingtonePickerActivity;)V

    iput-object v0, p0, Lcom/android/providers/media/RingtonePickerActivity;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    return-void
.end method

.method private addAddItem(Landroid/widget/ListView;)V
    .locals 3

    const v0, 0x7f040006

    iget-boolean v1, p0, Lcom/android/providers/media/RingtonePickerActivity;->mIsClockChina:Z

    if-eqz v1, :cond_0

    const v0, 0x7f040007

    :cond_0
    invoke-virtual {p0}, Lcom/android/providers/media/RingtonePickerActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/providers/media/RingtonePickerActivity;->mAddItem:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/providers/media/RingtonePickerActivity;->mAddItem:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/android/providers/media/RingtonePickerActivity;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x7f07000f

    :goto_0
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/android/providers/media/RingtonePickerActivity;->mAddItem:Landroid/widget/TextView;

    new-instance v2, Lcom/android/providers/media/RingtonePickerActivity$5;

    invoke-direct {v2, p0}, Lcom/android/providers/media/RingtonePickerActivity$5;-><init>(Lcom/android/providers/media/RingtonePickerActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/android/providers/media/RingtonePickerActivity;->mAddItem:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    return-void

    :cond_1
    const v1, 0x7f07000e

    goto :goto_0
.end method

.method private addDefaultRingtoneItem(Landroid/widget/ListView;)I
    .locals 3

    const v0, 0x7f040004

    iget-boolean v1, p0, Lcom/android/providers/media/RingtonePickerActivity;->mIsClockChina:Z

    if-eqz v1, :cond_0

    const v0, 0x7f040005

    :cond_0
    invoke-virtual {p0}, Lcom/android/providers/media/RingtonePickerActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckedTextView;

    iput-object v1, p0, Lcom/android/providers/media/RingtonePickerActivity;->mDefaultItem:Landroid/widget/CheckedTextView;

    iget v1, p0, Lcom/android/providers/media/RingtonePickerActivity;->mType:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    iget v1, p0, Lcom/android/providers/media/RingtonePickerActivity;->mType:I

    const/16 v2, 0x100

    if-ne v1, v2, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/android/providers/media/RingtonePickerActivity;->mDefaultItem:Landroid/widget/CheckedTextView;

    const v2, 0x7f070005

    invoke-virtual {v1, v2}, Landroid/widget/CheckedTextView;->setText(I)V

    :goto_0
    iget-object v1, p0, Lcom/android/providers/media/RingtonePickerActivity;->mDefaultItem:Landroid/widget/CheckedTextView;

    invoke-virtual {p1, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    iget v1, p0, Lcom/android/providers/media/RingtonePickerActivity;->mStaticItemCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/providers/media/RingtonePickerActivity;->mStaticItemCount:I

    invoke-virtual {p1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    return v1

    :cond_2
    iget v1, p0, Lcom/android/providers/media/RingtonePickerActivity;->mType:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/android/providers/media/RingtonePickerActivity;->mDefaultItem:Landroid/widget/CheckedTextView;

    const v2, 0x7f070006

    invoke-virtual {v1, v2}, Landroid/widget/CheckedTextView;->setText(I)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/providers/media/RingtonePickerActivity;->mDefaultItem:Landroid/widget/CheckedTextView;

    const v2, 0x7f070003

    invoke-virtual {v1, v2}, Landroid/widget/CheckedTextView;->setText(I)V

    goto :goto_0
.end method

.method private addSilentItem(Landroid/widget/ListView;)I
    .locals 3

    const v0, 0x7f040004

    iget-boolean v1, p0, Lcom/android/providers/media/RingtonePickerActivity;->mIsClockChina:Z

    if-eqz v1, :cond_0

    const v0, 0x7f040005

    :cond_0
    invoke-virtual {p0}, Lcom/android/providers/media/RingtonePickerActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckedTextView;

    iput-object v1, p0, Lcom/android/providers/media/RingtonePickerActivity;->mSilentItem:Landroid/widget/CheckedTextView;

    iget-object v1, p0, Lcom/android/providers/media/RingtonePickerActivity;->mSilentItem:Landroid/widget/CheckedTextView;

    const v2, 0x10403e1

    invoke-virtual {v1, v2}, Landroid/widget/CheckedTextView;->setText(I)V

    iget-object v1, p0, Lcom/android/providers/media/RingtonePickerActivity;->mSilentItem:Landroid/widget/CheckedTextView;

    invoke-virtual {p1, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    iget v1, p0, Lcom/android/providers/media/RingtonePickerActivity;->mStaticItemCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/providers/media/RingtonePickerActivity;->mStaticItemCount:I

    invoke-virtual {p1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    return v1
.end method

.method private canSetRingtone(Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    if-eqz p2, :cond_7

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "content://media/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-direct {p0, p1, p2}, Lcom/android/providers/media/RingtonePickerActivity;->getAudioFilePath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/providers/media/RingtonePickerActivity;->getDrmMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/android/providers/media/RingtonePickerActivity;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    if-nez v4, :cond_1

    const-string/jumbo v4, "RingtonePickerActivity"

    const-string/jumbo v5, "mDrmClient is null!!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    invoke-static {p1, p2}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v3

    if-nez v3, :cond_7

    const-string/jumbo v4, "RingtonePickerActivity"

    const-string/jumbo v5, "getRingtone() null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_1
    if-eqz v1, :cond_2

    if-nez v0, :cond_3

    :cond_2
    const-string/jumbo v4, "RingtonePickerActivity"

    const-string/jumbo v5, "path or mimeType is null!!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    iget-object v4, p0, Lcom/android/providers/media/RingtonePickerActivity;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v4, v1, v0}, Landroid/drm/DrmManagerClient;->canHandle(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-direct {p0, p1, v1}, Lcom/android/providers/media/RingtonePickerActivity;->isOmaForwardLockType(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string/jumbo v4, "RingtonePickerActivity"

    const-string/jumbo v5, "FL DRM File. Check if RingtoneManager.getRingtone() is null!!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    const-string/jumbo v4, "DCM"

    const-string/jumbo v5, "ro.csc.sales_code"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    if-eqz v0, :cond_6

    const-string/jumbo v4, "audio/isma"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/providers/media/RingtonePickerActivity;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    const/4 v5, 0x2

    invoke-virtual {v4, p2, v5}, Landroid/drm/DrmManagerClient;->checkRightsStatus(Landroid/net/Uri;I)I

    move-result v2

    if-eqz v2, :cond_5

    const-string/jumbo v4, "RingtonePickerActivity"

    const-string/jumbo v5, "PR DRM File Ringtone Rights Invalid !!!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_5
    return v7

    :cond_6
    return v6

    :cond_7
    return v7
.end method

.method private getAudioFilePath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 11

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const-string/jumbo v1, "_data"

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v9, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    const-string/jumbo v0, "_data"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v7

    :cond_0
    if-eqz v6, :cond_1

    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    :goto_0
    if-eqz v8, :cond_5

    throw v8

    :catch_0
    move-exception v8

    goto :goto_0

    :catch_1
    move-exception v0

    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v1

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    :goto_1
    if-eqz v6, :cond_2

    :try_start_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    :cond_2
    :goto_2
    if-eqz v1, :cond_4

    throw v1

    :catch_2
    move-exception v2

    if-nez v1, :cond_3

    move-object v1, v2

    goto :goto_2

    :cond_3
    if-eq v1, v2, :cond_2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_4
    throw v0

    :cond_5
    return-object v7

    :catchall_1
    move-exception v0

    move-object v1, v8

    goto :goto_1
.end method

.method private getDrmMimeType(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v1, 0x0

    if-nez p1, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, ".dcf"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "application/vnd.oma.drm.content"

    return-object v0

    :cond_1
    const-string/jumbo v0, ".pya"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "audio/vnd.ms-playready.media.pya"

    return-object v0

    :cond_2
    const-string/jumbo v0, ".wmv"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "video/x-ms-wmv"

    return-object v0

    :cond_3
    const-string/jumbo v0, ".wma"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string/jumbo v0, "audio/x-ms-wma"

    return-object v0

    :cond_4
    const-string/jumbo v0, ".pyv"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string/jumbo v0, "video/vnd.ms-playready.media.pyv"

    return-object v0

    :cond_5
    const-string/jumbo v0, ".avi"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string/jumbo v0, "video/mux/AVI"

    return-object v0

    :cond_6
    const-string/jumbo v0, ".mkv"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string/jumbo v0, "video/mux/MKV"

    return-object v0

    :cond_7
    const-string/jumbo v0, ".divx"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string/jumbo v0, "video/mux/DivX"

    return-object v0

    :cond_8
    const-string/jumbo v0, ".isma"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string/jumbo v0, "audio/isma"

    return-object v0

    :cond_9
    const-string/jumbo v0, ".ismv"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string/jumbo v0, "video/ismv"

    return-object v0

    :cond_a
    return-object v1
.end method

.method private getListPosition(I)I
    .locals 1

    if-gez p1, :cond_0

    return p1

    :cond_0
    iget v0, p0, Lcom/android/providers/media/RingtonePickerActivity;->mStaticItemCount:I

    add-int/2addr v0, p1

    return v0
.end method

.method private getRingtoneManagerPosition(I)I
    .locals 1

    iget v0, p0, Lcom/android/providers/media/RingtonePickerActivity;->mStaticItemCount:I

    sub-int v0, p1, v0

    return v0
.end method

.method private getStyle(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4

    const-string/jumbo v1, "RingtonePickerActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getStyle - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f080001

    const-string/jumbo v1, "clock_china"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const v0, 0x7f080014

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eqz p1, :cond_0

    if-eqz p2, :cond_2

    invoke-direct {p0, p2}, Lcom/android/providers/media/RingtonePickerActivity;->isIconUnifyTheme(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const-string/jumbo v1, "Email"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const v0, 0x7f080006

    goto :goto_0

    :cond_3
    const-string/jumbo v1, "splanner"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const v0, 0x7f080002

    goto :goto_0

    :cond_4
    const-string/jumbo v1, "call_setting_ringtones"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_5
    const v0, 0x7f08000a

    goto :goto_0

    :cond_6
    const-string/jumbo v1, "call_setting"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string/jumbo v1, "com.android.mms"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const v0, 0x7f08000e

    goto :goto_0

    :cond_7
    const-string/jumbo v1, "com.android.contacts"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const v0, 0x7f080012

    goto :goto_0
.end method

.method private isIconUnifyTheme(Ljava/lang/String;)Z
    .locals 5

    const-string/jumbo v2, "RingtonePickerActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isIconUnifyTheme - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/android/providers/media/RingtonePickerActivity;->supportSmartIconUnify:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    sget-boolean v2, Lcom/android/providers/media/RingtonePickerActivity;->supportSmartIconUnify:Z

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    :goto_0
    sget-object v2, Lcom/android/providers/media/RingtonePickerActivity;->ICON_UNIFY_THEME_PKG_LIST:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    sget-object v2, Lcom/android/providers/media/RingtonePickerActivity;->ICON_UNIFY_THEME_PKG_LIST:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    :cond_0
    const-string/jumbo v2, "RingtonePickerActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isIconUnifyTheme - return "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private isKnoxDeskTopMode()Z
    .locals 3

    invoke-virtual {p0}, Lcom/android/providers/media/RingtonePickerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "desktopmode"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    invoke-static {}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->isDesktopMode()Z

    move-result v1

    return v1
.end method

.method private isOmaForwardLockType(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 9

    const/4 v0, 0x0

    const/4 v8, 0x0

    new-instance v2, Landroid/drm/DrmInfoRequest;

    const-string/jumbo v5, "application/vnd.oma.drm.content"

    const/16 v6, 0xe

    invoke-direct {v2, v6, v5}, Landroid/drm/DrmInfoRequest;-><init>(ILjava/lang/String;)V

    const-string/jumbo v5, "drm_path"

    invoke-virtual {v2, v5, p2}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v5, p0, Lcom/android/providers/media/RingtonePickerActivity;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    if-nez v5, :cond_0

    :goto_0
    if-eqz v0, :cond_2

    const-string/jumbo v5, "status"

    invoke-virtual {v0, v5}, Landroid/drm/DrmInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "success"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string/jumbo v5, "RingtonePickerActivity"

    const-string/jumbo v6, "isOmaForwardLockType: acquireDrmInfo Success"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v5, "type"

    invoke-virtual {v0, v5}, Landroid/drm/DrmInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_3

    const-string/jumbo v5, "RingtonePickerActivity"

    const-string/jumbo v6, "isOmaForwardLockType: objType is null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v8

    :cond_0
    iget-object v5, p0, Lcom/android/providers/media/RingtonePickerActivity;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v5, v2}, Landroid/drm/DrmManagerClient;->acquireDrmInfo(Landroid/drm/DrmInfoRequest;)Landroid/drm/DrmInfo;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string/jumbo v5, "RingtonePickerActivity"

    const-string/jumbo v6, "isOmaForwardLockType: acquireDrmInfo Fail"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v8

    :cond_2
    const-string/jumbo v5, "RingtonePickerActivity"

    const-string/jumbo v6, "isOmaForwardLockType: acquireDrmInfo Fail, drminfo is null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v8

    :cond_3
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const-string/jumbo v5, "RingtonePickerActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "drmType = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v1, :cond_4

    const-string/jumbo v5, "RingtonePickerActivity"

    const-string/jumbo v6, "isOmaForwardLockType: this is FL"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x1

    return v5

    :cond_4
    return v8
.end method

.method private isRTL()Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/providers/media/RingtonePickerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v0, v1, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isTablet()Z
    .locals 2

    const-string/jumbo v1, "ro.build.characteristics"

    invoke-static {v1}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "tablet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isUserInCall(Landroid/content/Context;)Z
    .locals 5

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/providers/media/RingtonePickerActivity;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->getMode()I

    move-result v0

    const-string/jumbo v2, "RingtonePickerActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isUserInCall - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private playRingtone(II)V
    .locals 4

    invoke-direct {p0}, Lcom/android/providers/media/RingtonePickerActivity;->stopAnyPlayingRingtone()V

    iput p1, p0, Lcom/android/providers/media/RingtonePickerActivity;->mSampleRingtonePos:I

    iget v0, p0, Lcom/android/providers/media/RingtonePickerActivity;->mSilentPos:I

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/providers/media/RingtonePickerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/providers/media/RingtonePickerActivity;->isUserInCall(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f070010

    invoke-direct {p0, v0}, Lcom/android/providers/media/RingtonePickerActivity;->showToast(I)V

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/providers/media/RingtonePickerActivity;->requestAudioFocus()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/providers/media/RingtonePickerActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    sget-object v0, Lcom/android/providers/media/RingtonePickerActivity;->mHandler:Landroid/os/Handler;

    int-to-long v2, p2

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void

    :cond_2
    const-string/jumbo v0, "RingtonePickerActivity"

    const-string/jumbo v1, "fail to request Audio Focus"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private requestAudioFocus()Z
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string/jumbo v1, "RingtonePickerActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "requestAudioFocus() - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/providers/media/RingtonePickerActivity;->mStreamType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/providers/media/RingtonePickerActivity;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->semIsFmRadioActive()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/providers/media/RingtonePickerActivity;->mAudioManager:Landroid/media/AudioManager;

    iget-object v2, p0, Lcom/android/providers/media/RingtonePickerActivity;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    iget v3, p0, Lcom/android/providers/media/RingtonePickerActivity;->mStreamType:I

    invoke-virtual {v1, v2, v3, v6}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v0

    :goto_0
    if-nez v0, :cond_1

    const-string/jumbo v1, "RingtonePickerActivity"

    const-string/jumbo v2, "requestAudioFocus is failed"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_0
    iget-object v1, p0, Lcom/android/providers/media/RingtonePickerActivity;->mAudioManager:Landroid/media/AudioManager;

    iget-object v2, p0, Lcom/android/providers/media/RingtonePickerActivity;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    iget v3, p0, Lcom/android/providers/media/RingtonePickerActivity;->mStreamType:I

    const/4 v4, 0x2

    invoke-virtual {v1, v2, v3, v4}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v0

    goto :goto_0

    :cond_1
    return v6
.end method

.method private saveAnyPlayingRingtone()V
    .locals 1

    iget-object v0, p0, Lcom/android/providers/media/RingtonePickerActivity;->mDefaultRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/providers/media/RingtonePickerActivity;->mDefaultRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/providers/media/RingtonePickerActivity;->mDefaultRingtone:Landroid/media/Ringtone;

    sput-object v0, Lcom/android/providers/media/RingtonePickerActivity;->sPlayingRingtone:Landroid/media/Ringtone;

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/providers/media/RingtonePickerActivity;->mCurrentRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/providers/media/RingtonePickerActivity;->mCurrentRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/providers/media/RingtonePickerActivity;->mCurrentRingtone:Landroid/media/Ringtone;

    sput-object v0, Lcom/android/providers/media/RingtonePickerActivity;->sPlayingRingtone:Landroid/media/Ringtone;

    goto :goto_0
.end method

.method private setPopupWindowAttribute()V
    .locals 7

    invoke-virtual {p0}, Lcom/android/providers/media/RingtonePickerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Lcom/android/providers/media/RingtonePickerActivity;->setFinishOnTouchOutside(Z)V

    invoke-virtual {p0}, Lcom/android/providers/media/RingtonePickerActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setSystemUiVisibility(I)V

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    const/16 v5, 0x51

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->gravity:I

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    const-string/jumbo v5, "window"

    invoke-virtual {p0, v5}, Lcom/android/providers/media/RingtonePickerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/WindowManager;

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v5, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    const v6, 0x7f060011

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    sub-int/2addr v5, v6

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->height:I

    const v5, 0x7f060010

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v1, v5

    iget v5, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    if-ge v1, v5, :cond_1

    iput v1, v4, Landroid/view/WindowManager$LayoutParams;->width:I

    :goto_0
    invoke-virtual {v3, v4}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_0
    const/high16 v5, 0x10a0000

    const/4 v6, -0x1

    invoke-virtual {p0, v5, v6}, Lcom/android/providers/media/RingtonePickerActivity;->overridePendingTransition(II)V

    return-void

    :cond_1
    iget v5, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->width:I

    goto :goto_0
.end method

.method private showToast(I)V
    .locals 3

    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Lcom/android/providers/media/RingtonePickerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x103012b

    invoke-direct {v0, v1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p0, p1}, Lcom/android/providers/media/RingtonePickerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private stopAnyPlayingRingtone()V
    .locals 2

    const/4 v1, 0x0

    sget-object v0, Lcom/android/providers/media/RingtonePickerActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    sget-object v0, Lcom/android/providers/media/RingtonePickerActivity;->sPlayingRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/providers/media/RingtonePickerActivity;->sPlayingRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/providers/media/RingtonePickerActivity;->sPlayingRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->stop()V

    :cond_0
    sput-object v1, Lcom/android/providers/media/RingtonePickerActivity;->sPlayingRingtone:Landroid/media/Ringtone;

    iget-object v0, p0, Lcom/android/providers/media/RingtonePickerActivity;->mDefaultRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/providers/media/RingtonePickerActivity;->mDefaultRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/providers/media/RingtonePickerActivity;->mDefaultRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->stop()V

    :cond_1
    iget-object v0, p0, Lcom/android/providers/media/RingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/providers/media/RingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    invoke-virtual {v0}, Landroid/media/RingtoneManager;->stopPreviousRingtone()V

    :cond_2
    return-void
.end method


# virtual methods
.method public getUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 11

    const/4 v9, 0x0

    const-string/jumbo v8, "content://media/internal/audio/media"

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string/jumbo v0, "RingtonePickerActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "The path is:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_8

    const-string/jumbo v0, "RingtonePickerActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "The uri is:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/providers/media/RingtonePickerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "_id"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "_data= \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    const-string/jumbo v0, "RingtonePickerActivity"

    const-string/jumbo v2, " The path is exist in the DB"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    const-string/jumbo v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    const-string/jumbo v0, "RingtonePickerActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "The id is:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string/jumbo v0, "RingtonePickerActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "The uri is:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v6, :cond_0

    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_0
    if-eqz v9, :cond_1

    throw v9

    :catch_0
    move-exception v9

    goto :goto_0

    :cond_1
    return-object v1

    :cond_2
    if-eqz v6, :cond_3

    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    :cond_3
    :goto_1
    if-eqz v9, :cond_7

    throw v9

    :catch_1
    move-exception v9

    goto :goto_1

    :catch_2
    move-exception v0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v2

    move-object v10, v2

    move-object v2, v0

    move-object v0, v10

    :goto_2
    if-eqz v6, :cond_4

    :try_start_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3

    :cond_4
    :goto_3
    if-eqz v2, :cond_6

    throw v2

    :catch_3
    move-exception v3

    if-nez v2, :cond_5

    move-object v2, v3

    goto :goto_3

    :cond_5
    if-eq v2, v3, :cond_4

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_6
    throw v0

    :cond_7
    const-string/jumbo v0, "RingtonePickerActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "not Found The uri is:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    const-string/jumbo v0, ""

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0

    :catchall_1
    move-exception v0

    move-object v2, v9

    goto :goto_2
.end method

.method public onBackPressed()V
    .locals 4

    iget-object v2, p0, Lcom/android/providers/media/RingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    invoke-virtual {v2}, Landroid/media/RingtoneManager;->stopPreviousRingtone()V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/providers/media/RingtonePickerActivity;->mClickedPos:I

    iget v3, p0, Lcom/android/providers/media/RingtonePickerActivity;->mDefaultRingtonePos:I

    if-ne v2, v3, :cond_0

    iget-object v1, p0, Lcom/android/providers/media/RingtonePickerActivity;->mUriForDefaultItem:Landroid/net/Uri;

    :goto_0
    const-string/jumbo v2, "android.intent.extra.ringtone.PICKED_URI"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-direct {p0, p0, v1}, Lcom/android/providers/media/RingtonePickerActivity;->canSetRingtone(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v2

    if-nez v2, :cond_2

    const v2, 0x7f07000a

    invoke-direct {p0, v2}, Lcom/android/providers/media/RingtonePickerActivity;->showToast(I)V

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/providers/media/RingtonePickerActivity;->setResult(I)V

    :goto_1
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    return-void

    :cond_0
    iget v2, p0, Lcom/android/providers/media/RingtonePickerActivity;->mClickedPos:I

    iget v3, p0, Lcom/android/providers/media/RingtonePickerActivity;->mSilentPos:I

    if-ne v2, v3, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/providers/media/RingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    iget v3, p0, Lcom/android/providers/media/RingtonePickerActivity;->mClickedPos:I

    invoke-direct {p0, v3}, Lcom/android/providers/media/RingtonePickerActivity;->getRingtoneManagerPosition(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/media/RingtoneManager;->getRingtoneUri(I)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0

    :cond_2
    const/4 v2, -0x1

    invoke-virtual {p0, v2, v0}, Lcom/android/providers/media/RingtonePickerActivity;->setResult(ILandroid/content/Intent;)V

    goto :goto_1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 6

    invoke-direct {p0}, Lcom/android/providers/media/RingtonePickerActivity;->isTablet()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-direct {p0}, Lcom/android/providers/media/RingtonePickerActivity;->isKnoxDeskTopMode()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/android/providers/media/RingtonePickerActivity;->setPopupWindowAttribute()V

    :cond_1
    iget-object v3, p0, Lcom/android/providers/media/RingtonePickerActivity;->mAppName:Ljava/lang/String;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/providers/media/RingtonePickerActivity;->mAppName:Ljava/lang/String;

    const-string/jumbo v4, "clock_china"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    :goto_0
    if-nez v3, :cond_2

    const-string/jumbo v3, "LAND"

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v4

    const-string/jumbo v5, "SEC_FLOATING_FEATURE_COMMON_CONFIG_HIDE_STATUS_BAR"

    invoke-virtual {v4, v5}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {p0}, Lcom/android/providers/media/RingtonePickerActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v3, 0x2

    if-ne v1, v3, :cond_4

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v3, v3, 0x400

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    or-int/lit8 v3, v3, 0x2

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    invoke-virtual {v2, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_2
    :goto_1
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void

    :cond_3
    const/4 v3, 0x0

    goto :goto_0

    :cond_4
    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v3, v3, -0x401

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    and-int/lit8 v3, v3, -0x3

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    invoke-virtual {v2, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 27

    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string/jumbo v4, "RingtonePickerActivity"

    const-string/jumbo v5, "onCreate()"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/media/RingtonePickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v15

    new-instance v4, Landroid/drm/DrmManagerClient;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Landroid/drm/DrmManagerClient;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/providers/media/RingtonePickerActivity;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    const-string/jumbo v4, "useLightTheme"

    const/4 v5, 0x0

    invoke-virtual {v15, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v16

    if-eqz v16, :cond_0

    const-string/jumbo v4, "RingtonePickerActivity"

    const-string/jumbo v5, "onCreate() : useLightTheme is true so set light theme"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string/jumbo v4, "from"

    invoke-virtual {v15, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/providers/media/RingtonePickerActivity;->mAppName:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/media/RingtonePickerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "current_sec_active_themepackage"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v4, "RingtonePickerActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "from "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/providers/media/RingtonePickerActivity;->mAppName:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, " - "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, "clock_china"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/providers/media/RingtonePickerActivity;->mAppName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/providers/media/RingtonePickerActivity;->mIsClockChina:Z

    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/media/RingtonePickerActivity;->mAppName:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v14}, Lcom/android/providers/media/RingtonePickerActivity;->getStyle(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/providers/media/RingtonePickerActivity;->setTheme(I)V

    const-string/jumbo v4, "android.intent.extra.ringtone.SHOW_DEFAULT"

    const/4 v5, 0x1

    invoke-virtual {v15, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/providers/media/RingtonePickerActivity;->mHasDefaultItem:Z

    const-string/jumbo v4, "android.intent.extra.ringtone.DEFAULT_URI"

    invoke-virtual {v15, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/providers/media/RingtonePickerActivity;->mUriForDefaultItem:Landroid/net/Uri;

    const-string/jumbo v4, "RingtonePickerActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "EXTRA_RINGTONE_DEFAULT_URI - "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/providers/media/RingtonePickerActivity;->mUriForDefaultItem:Landroid/net/Uri;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/media/RingtonePickerActivity;->mUriForDefaultItem:Landroid/net/Uri;

    if-nez v4, :cond_2

    sget-object v4, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/providers/media/RingtonePickerActivity;->mUriForDefaultItem:Landroid/net/Uri;

    :cond_2
    if-eqz p1, :cond_3

    const-string/jumbo v4, "clicked_pos"

    const/4 v5, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/providers/media/RingtonePickerActivity;->mClickedPos:I

    :cond_3
    const-string/jumbo v4, "android.intent.extra.ringtone.SHOW_SILENT"

    const/4 v5, 0x1

    invoke-virtual {v15, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/providers/media/RingtonePickerActivity;->mHasSilentItem:Z

    const-string/jumbo v4, "neutral_button"

    const/4 v5, 0x0

    invoke-virtual {v15, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/providers/media/RingtonePickerActivity;->mHasAddItem:Z

    :cond_4
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/providers/media/RingtonePickerActivity;->mAttributesFlags:I

    const-string/jumbo v5, "android.intent.extra.ringtone.AUDIO_ATTRIBUTES_FLAGS"

    const/4 v7, 0x0

    invoke-virtual {v15, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    or-int/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/providers/media/RingtonePickerActivity;->mAttributesFlags:I

    new-instance v4, Landroid/media/RingtoneManager;

    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/media/RingtonePickerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/media/RingtoneManager;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/providers/media/RingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    const-string/jumbo v4, "audio"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/providers/media/RingtonePickerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/AudioManager;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/providers/media/RingtonePickerActivity;->mAudioManager:Landroid/media/AudioManager;

    const-string/jumbo v4, "android.intent.extra.ringtone.TYPE"

    const/4 v5, -0x1

    invoke-virtual {v15, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/providers/media/RingtonePickerActivity;->mType:I

    const-string/jumbo v4, "RingtonePickerActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "type:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/providers/media/RingtonePickerActivity;->mType:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/providers/media/RingtonePickerActivity;->mType:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/media/RingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/providers/media/RingtonePickerActivity;->mType:I

    invoke-virtual {v4, v5}, Landroid/media/RingtoneManager;->setType(I)V

    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/media/RingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    invoke-virtual {v4}, Landroid/media/RingtoneManager;->getCursor()Landroid/database/Cursor;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/providers/media/RingtonePickerActivity;->mCursor:Landroid/database/Cursor;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/media/RingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    invoke-virtual {v4}, Landroid/media/RingtoneManager;->inferStreamType()I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/providers/media/RingtonePickerActivity;->mStreamType:I

    const-string/jumbo v4, "RingtonePickerActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "volume control stream:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/providers/media/RingtonePickerActivity;->mStreamType:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/providers/media/RingtonePickerActivity;->mStreamType:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/providers/media/RingtonePickerActivity;->setVolumeControlStream(I)V

    const-string/jumbo v4, "android.intent.extra.ringtone.EXISTING_URI"

    invoke-virtual {v15, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/providers/media/RingtonePickerActivity;->mExistingUri:Landroid/net/Uri;

    const-string/jumbo v4, "RingtonePickerActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "existing uri:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/providers/media/RingtonePickerActivity;->mExistingUri:Landroid/net/Uri;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/media/RingtonePickerActivity;->mExistingUri:Landroid/net/Uri;

    if-eqz v4, :cond_6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/media/RingtonePickerActivity;->mExistingUri:Landroid/net/Uri;

    const-string/jumbo v5, "highlight_offset"

    invoke-virtual {v4, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_6

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/providers/media/RingtonePickerActivity;->mOffset:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "?highlight_offset="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/media/RingtonePickerActivity;->mExistingUri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, ""

    move-object/from16 v0, v20

    invoke-virtual {v4, v0, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/providers/media/RingtonePickerActivity;->mExistingUri:Landroid/net/Uri;

    :cond_6
    invoke-direct/range {p0 .. p0}, Lcom/android/providers/media/RingtonePickerActivity;->isTablet()Z

    move-result v4

    if-nez v4, :cond_7

    invoke-direct/range {p0 .. p0}, Lcom/android/providers/media/RingtonePickerActivity;->isKnoxDeskTopMode()Z

    move-result v4

    if-eqz v4, :cond_8

    :cond_7
    invoke-direct/range {p0 .. p0}, Lcom/android/providers/media/RingtonePickerActivity;->setPopupWindowAttribute()V

    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/media/RingtonePickerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v0, v4, Landroid/content/res/Configuration;->orientation:I

    move/from16 v19, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/media/RingtonePickerActivity;->getWindow()Landroid/view/Window;

    move-result-object v26

    if-eqz v26, :cond_9

    invoke-virtual/range {v26 .. v26}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v17

    if-eqz v17, :cond_9

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/media/RingtonePickerActivity;->mAppName:Ljava/lang/String;

    if-eqz v4, :cond_14

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/media/RingtonePickerActivity;->mAppName:Ljava/lang/String;

    const-string/jumbo v5, "clock_china"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    move-object/from16 v0, v17

    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v4, v4, 0x400

    move-object/from16 v0, v17

    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    move-object/from16 v0, v17

    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    or-int/lit8 v4, v4, 0x2

    move-object/from16 v0, v17

    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    move-object/from16 v0, v26

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_9
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/providers/media/RingtonePickerActivity;->mIsClockChina:Z

    if-eqz v4, :cond_16

    const v4, 0x7f040001

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/providers/media/RingtonePickerActivity;->setContentView(I)V

    const/high16 v4, 0x7f090000

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/providers/media/RingtonePickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/Toolbar;

    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/media/RingtonePickerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f080015

    move-object/from16 v0, v24

    invoke-virtual {v0, v4, v5}, Landroid/widget/Toolbar;->setTitleTextAppearance(Landroid/content/Context;I)V

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/providers/media/RingtonePickerActivity;->setActionBar(Landroid/widget/Toolbar;)V

    :goto_1
    const v4, 0x102000a

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/providers/media/RingtonePickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ListView;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/providers/media/RingtonePickerActivity;->mListView:Landroid/widget/ListView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/media/RingtonePickerActivity;->mListView:Landroid/widget/ListView;

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Landroid/widget/ListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/media/RingtonePickerActivity;->mListView:Landroid/widget/ListView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/providers/media/RingtonePickerActivity;->mRingtoneClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/media/RingtonePickerActivity;->mListView:Landroid/widget/ListView;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setChoiceMode(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/media/RingtonePickerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v4, 0x7f060001

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/media/RingtonePickerActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/providers/media/RingtonePickerActivity;->mIsClockChina:Z

    if-eqz v4, :cond_a

    const v4, 0x7f020038

    const/4 v5, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v5}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    :cond_a
    invoke-direct/range {p0 .. p0}, Lcom/android/providers/media/RingtonePickerActivity;->isRTL()Z

    move-result v4

    if-eqz v4, :cond_17

    new-instance v2, Landroid/graphics/drawable/InsetDrawable;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v7}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    :goto_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/media/RingtonePickerActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4, v2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    const/16 v23, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/media/RingtonePickerActivity;->mAppName:Ljava/lang/String;

    if-eqz v4, :cond_18

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/media/RingtonePickerActivity;->mAppName:Ljava/lang/String;

    const-string/jumbo v5, "alarm_tone"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/media/RingtonePickerActivity;->mAppName:Ljava/lang/String;

    const-string/jumbo v5, "clock_china"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18

    :cond_b
    const v4, 0x7f07000c

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/providers/media/RingtonePickerActivity;->getString(I)Ljava/lang/String;

    move-result-object v23

    :goto_3
    if-nez v23, :cond_c

    const v4, 0x10403e2

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/providers/media/RingtonePickerActivity;->getString(I)Ljava/lang/String;

    move-result-object v23

    :cond_c
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/providers/media/RingtonePickerActivity;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/media/RingtonePickerActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v13

    const/4 v4, 0x1

    invoke-virtual {v13, v4}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    const/4 v4, 0x1

    invoke-virtual {v13, v4}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    const/4 v4, 0x1

    invoke-virtual {v13, v4}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/media/RingtonePickerActivity;->mCursor:Landroid/database/Cursor;

    if-eqz v4, :cond_1b

    const v9, 0x7f040004

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/providers/media/RingtonePickerActivity;->mIsClockChina:Z

    if-eqz v4, :cond_d

    const v9, 0x7f040005

    :cond_d
    new-instance v7, Landroid/widget/SimpleCursorAdapter;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/providers/media/RingtonePickerActivity;->mCursor:Landroid/database/Cursor;

    const/4 v4, 0x1

    new-array v11, v4, [Ljava/lang/String;

    const-string/jumbo v4, "title"

    const/4 v5, 0x0

    aput-object v4, v11, v5

    const/4 v4, 0x1

    new-array v12, v4, [I

    const v4, 0x1020014

    const/4 v5, 0x0

    aput v4, v12, v5

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/android/providers/media/RingtonePickerActivity;->mListAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/providers/media/RingtonePickerActivity;->mHasDefaultItem:Z

    if-eqz v4, :cond_e

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/media/RingtonePickerActivity;->mListView:Landroid/widget/ListView;

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/providers/media/RingtonePickerActivity;->addDefaultRingtoneItem(Landroid/widget/ListView;)I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/providers/media/RingtonePickerActivity;->mDefaultRingtonePos:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/providers/media/RingtonePickerActivity;->mClickedPos:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_e

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/media/RingtonePickerActivity;->mExistingUri:Landroid/net/Uri;

    invoke-static {v4}, Landroid/media/RingtoneManager;->isDefault(Landroid/net/Uri;)Z

    move-result v4

    if-eqz v4, :cond_e

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/providers/media/RingtonePickerActivity;->mDefaultRingtonePos:I

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/providers/media/RingtonePickerActivity;->mClickedPos:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/media/RingtonePickerActivity;->mDefaultItem:Landroid/widget/CheckedTextView;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    :cond_e
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/providers/media/RingtonePickerActivity;->mHasSilentItem:Z

    if-eqz v4, :cond_f

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/media/RingtonePickerActivity;->mListView:Landroid/widget/ListView;

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/providers/media/RingtonePickerActivity;->addSilentItem(Landroid/widget/ListView;)I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/providers/media/RingtonePickerActivity;->mSilentPos:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/providers/media/RingtonePickerActivity;->mClickedPos:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_f

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/media/RingtonePickerActivity;->mExistingUri:Landroid/net/Uri;

    if-nez v4, :cond_f

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/providers/media/RingtonePickerActivity;->mSilentPos:I

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/providers/media/RingtonePickerActivity;->mClickedPos:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/media/RingtonePickerActivity;->mSilentItem:Landroid/widget/CheckedTextView;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    :cond_f
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/providers/media/RingtonePickerActivity;->mHasAddItem:Z

    if-eqz v4, :cond_10

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/media/RingtonePickerActivity;->mListView:Landroid/widget/ListView;

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/providers/media/RingtonePickerActivity;->addAddItem(Landroid/widget/ListView;)V

    :cond_10
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/media/RingtonePickerActivity;->mListView:Landroid/widget/ListView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setSoundEffectsEnabled(Z)V

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/providers/media/RingtonePickerActivity;->mClickedPos:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_11

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/media/RingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/providers/media/RingtonePickerActivity;->mExistingUri:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Landroid/media/RingtoneManager;->getRingtonePosition(Landroid/net/Uri;)I

    move-result v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/providers/media/RingtonePickerActivity;->getListPosition(I)I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/providers/media/RingtonePickerActivity;->mClickedPos:I

    :cond_11
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/media/RingtonePickerActivity;->mExistingUri:Landroid/net/Uri;

    if-eqz v4, :cond_12

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/providers/media/RingtonePickerActivity;->mClickedPos:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_12

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/media/RingtonePickerActivity;->mExistingUri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/providers/media/RingtonePickerActivity;->getUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/media/RingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Landroid/media/RingtoneManager;->getRingtonePosition(Landroid/net/Uri;)I

    move-result v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/providers/media/RingtonePickerActivity;->getListPosition(I)I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/providers/media/RingtonePickerActivity;->mClickedPos:I

    const-string/jumbo v4, "RingtonePickerActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onPrepareListView : mClickedPos : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/providers/media/RingtonePickerActivity;->mClickedPos:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/providers/media/RingtonePickerActivity;->mClickedPos:I

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/providers/media/RingtonePickerActivity;->mCheckedItem:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/media/RingtonePickerActivity;->mListView:Landroid/widget/ListView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/providers/media/RingtonePickerActivity;->mListAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/media/RingtonePickerActivity;->mListView:Landroid/widget/ListView;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/providers/media/RingtonePickerActivity;->mCheckedItem:I

    const/4 v7, 0x1

    invoke-virtual {v4, v5, v7}, Landroid/widget/ListView;->setItemChecked(IZ)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/media/RingtonePickerActivity;->mListView:Landroid/widget/ListView;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/providers/media/RingtonePickerActivity;->mCheckedItem:I

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setSelection(I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/media/RingtonePickerActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->requestFocus()Z

    :goto_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/media/RingtonePickerActivity;->mListView:Landroid/widget/ListView;

    new-instance v5, Lcom/android/providers/media/RingtonePickerActivity$4;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/android/providers/media/RingtonePickerActivity$4;-><init>(Lcom/android/providers/media/RingtonePickerActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/providers/media/RingtonePickerActivity;->mHasAddItem:Z

    if-eqz v4, :cond_13

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/media/RingtonePickerActivity;->mListAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v4}, Landroid/widget/ListAdapter;->getCount()I

    move-result v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/providers/media/RingtonePickerActivity;->mStaticItemCount:I

    add-int/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/providers/media/RingtonePickerActivity;->mAddPos:I

    :cond_13
    return-void

    :cond_14
    const-string/jumbo v4, "LAND"

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v5

    const-string/jumbo v7, "SEC_FLOATING_FEATURE_COMMON_CONFIG_HIDE_STATUS_BAR"

    invoke-virtual {v5, v7}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    const/4 v4, 0x2

    move/from16 v0, v19

    if-ne v0, v4, :cond_15

    move-object/from16 v0, v17

    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v4, v4, 0x400

    move-object/from16 v0, v17

    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    move-object/from16 v0, v17

    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    or-int/lit8 v4, v4, 0x2

    move-object/from16 v0, v17

    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    move-object/from16 v0, v26

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    goto/16 :goto_0

    :cond_15
    move-object/from16 v0, v17

    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v4, v4, -0x401

    move-object/from16 v0, v17

    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    move-object/from16 v0, v17

    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    and-int/lit8 v4, v4, -0x3

    move-object/from16 v0, v17

    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    move-object/from16 v0, v26

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    goto/16 :goto_0

    :cond_16
    const/high16 v4, 0x7f040000

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/providers/media/RingtonePickerActivity;->setContentView(I)V

    goto/16 :goto_1

    :cond_17
    new-instance v2, Landroid/graphics/drawable/InsetDrawable;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, v2

    move-object v5, v3

    invoke-direct/range {v4 .. v9}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    goto/16 :goto_2

    :cond_18
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/media/RingtonePickerActivity;->mAppName:Ljava/lang/String;

    if-eqz v4, :cond_1a

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/media/RingtonePickerActivity;->mAppName:Ljava/lang/String;

    const-string/jumbo v5, "splanner"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_19

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/media/RingtonePickerActivity;->mAppName:Ljava/lang/String;

    const-string/jumbo v5, "com.android.mms"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_19

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/media/RingtonePickerActivity;->mAppName:Ljava/lang/String;

    const-string/jumbo v5, "call_setting"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1a

    :cond_19
    const v4, 0x7f07000b

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/providers/media/RingtonePickerActivity;->getString(I)Ljava/lang/String;

    move-result-object v23

    goto/16 :goto_3

    :cond_1a
    const-string/jumbo v4, "android.intent.extra.ringtone.TITLE"

    invoke-virtual {v15, v4}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v23

    goto/16 :goto_3

    :cond_1b
    const-string/jumbo v4, "RingtonePickerActivity"

    const-string/jumbo v5, "Cursor is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4
.end method

.method protected onDestroy()V
    .locals 2

    const-string/jumbo v0, "RingtonePickerActivity"

    const-string/jumbo v1, "onDestroy()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/providers/media/RingtonePickerActivity;->mSync:Z

    iget-object v0, p0, Lcom/android/providers/media/RingtonePickerActivity;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/providers/media/RingtonePickerActivity;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v0}, Landroid/drm/DrmManagerClient;->release()V

    :cond_0
    iget-object v0, p0, Lcom/android/providers/media/RingtonePickerActivity;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/providers/media/RingtonePickerActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    :goto_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/providers/media/RingtonePickerActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/providers/media/RingtonePickerActivity;->mHasAddItem:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/providers/media/RingtonePickerActivity;->mAddPos:I

    if-ne p3, v0, :cond_0

    invoke-direct {p0}, Lcom/android/providers/media/RingtonePickerActivity;->stopAnyPlayingRingtone()V

    :goto_0
    return-void

    :cond_0
    const/16 v0, 0x12c

    invoke-direct {p0, p3, v0}, Lcom/android/providers/media/RingtonePickerActivity;->playRingtone(II)V

    goto :goto_0
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/android/providers/media/RingtonePickerActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/providers/media/RingtonePickerActivity;->mSaveRingtone:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    sget-object v0, Lcom/android/providers/media/RingtonePickerActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/providers/media/RingtonePickerActivity;->mSaveRingtone:Ljava/lang/Runnable;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method protected onPause()V
    .locals 2

    const-string/jumbo v0, "RingtonePickerActivity"

    const-string/jumbo v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/providers/media/RingtonePickerActivity;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/providers/media/RingtonePickerActivity;->stopAnyPlayingRingtone()V

    :cond_0
    iget-object v0, p0, Lcom/android/providers/media/RingtonePickerActivity;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/android/providers/media/RingtonePickerActivity;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    iget-object v0, p0, Lcom/android/providers/media/RingtonePickerActivity;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/android/providers/media/RingtonePickerActivity;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->unregisterAudioFocusListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;)V

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    iget-object v0, p0, Lcom/android/providers/media/RingtonePickerActivity;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/providers/media/RingtonePickerActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method protected onRestart()V
    .locals 2

    const-string/jumbo v0, "RingtonePickerActivity"

    const-string/jumbo v1, "onRestart"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    return-void
.end method

.method protected onResume()V
    .locals 3

    const-string/jumbo v1, "RingtonePickerActivity"

    const-string/jumbo v2, "onResume"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "com.samsung.intent.action.SIMHOTSWAP"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/android/providers/media/RingtonePickerActivity$6;

    invoke-direct {v1, p0}, Lcom/android/providers/media/RingtonePickerActivity$6;-><init>(Lcom/android/providers/media/RingtonePickerActivity;)V

    iput-object v1, p0, Lcom/android/providers/media/RingtonePickerActivity;->receiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/android/providers/media/RingtonePickerActivity;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/providers/media/RingtonePickerActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    const-string/jumbo v0, "RingtonePickerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSaveInstanceState - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/providers/media/RingtonePickerActivity;->mClickedPos:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "clicked_pos"

    iget v1, p0, Lcom/android/providers/media/RingtonePickerActivity;->mClickedPos:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onStart()V
    .locals 2

    const-string/jumbo v0, "RingtonePickerActivity"

    const-string/jumbo v1, "onStart"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    return-void
.end method

.method protected onStop()V
    .locals 2

    const-string/jumbo v0, "RingtonePickerActivity"

    const-string/jumbo v1, "onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/providers/media/RingtonePickerActivity;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/providers/media/RingtonePickerActivity;->stopAnyPlayingRingtone()V

    :goto_0
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/providers/media/RingtonePickerActivity;->saveAnyPlayingRingtone()V

    goto :goto_0
.end method

.method public run()V
    .locals 6

    const/4 v5, 0x0

    iget v3, p0, Lcom/android/providers/media/RingtonePickerActivity;->mSampleRingtonePos:I

    iget v4, p0, Lcom/android/providers/media/RingtonePickerActivity;->mDefaultRingtonePos:I

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/android/providers/media/RingtonePickerActivity;->mDefaultRingtone:Landroid/media/Ringtone;

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/providers/media/RingtonePickerActivity;->mUriForDefaultItem:Landroid/net/Uri;

    invoke-static {p0, v3}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v3

    iput-object v3, p0, Lcom/android/providers/media/RingtonePickerActivity;->mDefaultRingtone:Landroid/media/Ringtone;

    :cond_0
    iget-object v3, p0, Lcom/android/providers/media/RingtonePickerActivity;->mDefaultRingtone:Landroid/media/Ringtone;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/providers/media/RingtonePickerActivity;->mDefaultRingtone:Landroid/media/Ringtone;

    iget-object v4, p0, Lcom/android/providers/media/RingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    invoke-virtual {v4}, Landroid/media/RingtoneManager;->inferStreamType()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/media/Ringtone;->setStreamType(I)V

    :cond_1
    iget-object v1, p0, Lcom/android/providers/media/RingtonePickerActivity;->mDefaultRingtone:Landroid/media/Ringtone;

    iput-object v5, p0, Lcom/android/providers/media/RingtonePickerActivity;->mCurrentRingtone:Landroid/media/Ringtone;

    iget-object v3, p0, Lcom/android/providers/media/RingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    invoke-virtual {v3}, Landroid/media/RingtoneManager;->stopPreviousRingtone()V

    :goto_0
    if-eqz v1, :cond_5

    iget v3, p0, Lcom/android/providers/media/RingtonePickerActivity;->mAttributesFlags:I

    if-eqz v3, :cond_2

    new-instance v3, Landroid/media/AudioAttributes$Builder;

    invoke-virtual {v1}, Landroid/media/Ringtone;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/media/AudioAttributes$Builder;-><init>(Landroid/media/AudioAttributes;)V

    iget v4, p0, Lcom/android/providers/media/RingtonePickerActivity;->mAttributesFlags:I

    invoke-virtual {v3, v4}, Landroid/media/AudioAttributes$Builder;->setFlags(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/media/Ringtone;->setAudioAttributes(Landroid/media/AudioAttributes;)V

    :cond_2
    invoke-virtual {v1}, Landroid/media/Ringtone;->play()V

    :goto_1
    return-void

    :cond_3
    iget v3, p0, Lcom/android/providers/media/RingtonePickerActivity;->mSampleRingtonePos:I

    iget v4, p0, Lcom/android/providers/media/RingtonePickerActivity;->mCheckedItem:I

    if-ne v3, v4, :cond_4

    iget-object v3, p0, Lcom/android/providers/media/RingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    iget v4, p0, Lcom/android/providers/media/RingtonePickerActivity;->mSampleRingtonePos:I

    invoke-direct {p0, v4}, Lcom/android/providers/media/RingtonePickerActivity;->getRingtoneManagerPosition(I)I

    move-result v4

    iget v5, p0, Lcom/android/providers/media/RingtonePickerActivity;->mOffset:I

    invoke-virtual {v3, v4, v5}, Landroid/media/RingtoneManager;->semGetRingtone(II)Landroid/media/Ringtone;

    move-result-object v1

    iput-object v1, p0, Lcom/android/providers/media/RingtonePickerActivity;->mCurrentRingtone:Landroid/media/Ringtone;

    goto :goto_0

    :cond_4
    :try_start_0
    iget-object v3, p0, Lcom/android/providers/media/RingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    iget v4, p0, Lcom/android/providers/media/RingtonePickerActivity;->mSampleRingtonePos:I

    invoke-direct {p0, v4}, Lcom/android/providers/media/RingtonePickerActivity;->getRingtoneManagerPosition(I)I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/media/RingtoneManager;->semGetRingtone(II)Landroid/media/Ringtone;
    :try_end_0
    .catch Landroid/database/StaleDataException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_2
    iput-object v1, p0, Lcom/android/providers/media/RingtonePickerActivity;->mCurrentRingtone:Landroid/media/Ringtone;

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    goto :goto_2

    :catch_1
    move-exception v2

    const/4 v1, 0x0

    goto :goto_2

    :cond_5
    const-string/jumbo v3, "RingtonePickerActivity"

    const-string/jumbo v4, "Ringtone is null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
