.class public Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;
.super Lcom/samsung/android/game/gametools/setting/fragment/ImageSelectorFragment;
.source "SettingRecordFragment.java"


# static fields
.field private static DEFAULT_PROFILE_IMAGE_SIZE:I


# instance fields
.field private mAfterSetBitrate:Z

.field private mAfterSetResolution:Z

.field private mAudioSourceHeader:Landroid/widget/LinearLayout;

.field private mBitrate:Landroid/widget/LinearLayout;

.field private mBitrateAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mBitrateSpinner:Landroid/widget/Spinner;

.field private mFrontCameraLayout:Landroid/widget/LinearLayout;

.field private mFrontCameraRadioButton:Landroid/widget/RadioButton;

.field private mGameAudioLayout:Landroid/widget/LinearLayout;

.field private mGameAudioRadioButton:Landroid/widget/RadioButton;

.field private mImagePath:Ljava/lang/String;

.field private mIsProfileImageEnable:Z

.field private mMaxFileSize:Landroid/widget/TextView;

.field private mMicrophoneLayout:Landroid/widget/LinearLayout;

.field private mMicrophoneRadioButton:Landroid/widget/RadioButton;

.field private mNoneLayout:Landroid/widget/LinearLayout;

.field private mNoneRadioButton:Landroid/widget/RadioButton;

.field private mPercent:I

.field private mProfileEdit:Landroid/widget/ImageView;

.field private mProfileIcon:Lcom/sec/game/gamecast/common/utility/CommonRoundIcon;

.field private mProfileIconLayout:Landroid/widget/FrameLayout;

.field private mProfileImageLayout:Landroid/widget/LinearLayout;

.field private mProfileImageRadioButton:Landroid/widget/RadioButton;

.field private mProfileSeekBarCenterImage:Landroid/view/View;

.field private mProfileSize:Landroid/widget/LinearLayout;

.field private mProfileSource:I

.field private mProfileSourceHeader:Landroid/widget/LinearLayout;

.field private mProfile_seek_bar:Landroid/widget/SeekBar;

.field private mRecordDefault:I

.field private mResolution:Landroid/widget/LinearLayout;

.field private mResolutionAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mResolutionHeader:Landroid/widget/LinearLayout;

.field private mResolutionSpinner:Landroid/widget/Spinner;

.field private mSeekBarListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private mSeekbarLayout:Landroid/widget/FrameLayout;

.field private selectProfieDialog:Lcom/sec/game/gamecast/common/ui/DialogFragment/CommonDialogFragment;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x4b

    sput v0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->DEFAULT_PROFILE_IMAGE_SIZE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/samsung/android/game/gametools/setting/fragment/ImageSelectorFragment;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->selectProfieDialog:Lcom/sec/game/gamecast/common/ui/DialogFragment/CommonDialogFragment;

    iput-boolean v1, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->mAfterSetResolution:Z

    iput-boolean v1, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->mAfterSetBitrate:Z

    new-instance v0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment$10;

    invoke-direct {v0, p0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment$10;-><init>(Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;)V

    iput-object v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->mSeekBarListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;)Landroid/widget/RadioButton;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->mFrontCameraRadioButton:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;)Landroid/widget/RadioButton;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->mProfileImageRadioButton:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->setRecordingBitrate(I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->mPercent:I

    return v0
.end method

.method static synthetic access$1102(Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->mPercent:I

    return p1
.end method

.method static synthetic access$1200(Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;I)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->getProgressToPercent(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->resizeToProfileImage(I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->resizeToProfileEditIcon(I)V

    return-void
.end method

.method static synthetic access$1500(Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;)Lcom/sec/game/gamecast/common/ui/DialogFragment/CommonDialogFragment;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->selectProfieDialog:Lcom/sec/game/gamecast/common/ui/DialogFragment/CommonDialogFragment;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;Lcom/sec/game/gamecast/common/ui/DialogFragment/CommonDialogFragment;)Lcom/sec/game/gamecast/common/ui/DialogFragment/CommonDialogFragment;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->selectProfieDialog:Lcom/sec/game/gamecast/common/ui/DialogFragment/CommonDialogFragment;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->mIsProfileImageEnable:Z

    return v0
.end method

.method static synthetic access$1602(Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->mIsProfileImageEnable:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;)Lcom/sec/game/gamecast/common/utility/CommonRoundIcon;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->mProfileIcon:Lcom/sec/game/gamecast/common/utility/CommonRoundIcon;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->isExistSettingImage:Z

    return p1
.end method

.method static synthetic access$1902(Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->mImagePath:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;)Landroid/widget/RadioButton;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->mNoneRadioButton:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;)Landroid/widget/RadioButton;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->mMicrophoneRadioButton:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;)Landroid/widget/RadioButton;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->mGameAudioRadioButton:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;)Landroid/widget/Spinner;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->mResolutionSpinner:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic access$600(Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;)Landroid/widget/Spinner;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->mBitrateSpinner:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic access$700(Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->mAfterSetResolution:Z

    return v0
.end method

.method static synthetic access$702(Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->mAfterSetResolution:Z

    return p1
.end method

.method static synthetic access$800(Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->setRecordingResolution(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->mAfterSetBitrate:Z

    return v0
.end method

.method static synthetic access$902(Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->mAfterSetBitrate:Z

    return p1
.end method

.method private colorToColorStateList(I)Landroid/content/res/ColorStateList;
    .locals 4

    const/4 v2, 0x1

    const/4 v3, 0x0

    new-array v0, v2, [[I

    new-array v1, v3, [I

    aput-object v1, v0, v3

    new-instance v1, Landroid/content/res/ColorStateList;

    new-array v2, v2, [I

    aput p1, v2, v3

    invoke-direct {v1, v0, v2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v1
.end method

.method private getPercentToProgress(I)I
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x64

    if-gt p1, v1, :cond_0

    add-int/lit8 v1, p1, -0x4b

    mul-int/lit8 v1, v1, 0x32

    div-int/lit8 v0, v1, 0x19

    :goto_0
    return v0

    :cond_0
    add-int/lit8 v1, p1, -0x64

    mul-int/lit8 v1, v1, 0x32

    div-int/lit8 v1, v1, 0x4b

    add-int/lit8 v0, v1, 0x32

    goto :goto_0
.end method

.method private getProgressToPercent(I)I
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x32

    if-gt p1, v1, :cond_0

    div-int/lit8 v1, p1, 0x2

    add-int/lit8 v0, v1, 0x4b

    :goto_0
    return v0

    :cond_0
    add-int/lit8 v1, p1, -0x32

    mul-int/lit8 v1, v1, 0x4b

    div-int/lit8 v1, v1, 0x32

    add-int/lit8 v0, v1, 0x64

    goto :goto_0
.end method

.method private getResolutionIndex([Ljava/lang/String;)I
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->getmActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/game/gamecast/common/model/SettingData;->getResolution(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    return v1
.end method

.method private resizeProfileImages(I)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->getProgressToPercent(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->resizeToProfileImage(I)V

    invoke-direct {p0, v0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->resizeToProfileEditIcon(I)V

    return-void
.end method

.method private resizeToProfileEditIcon(I)V
    .locals 2

    iget-object v1, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->mProfileIconLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->mRecordDefault:I

    mul-int/2addr v1, p1

    div-int/lit8 v1, v1, 0x64

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v1, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->mRecordDefault:I

    mul-int/2addr v1, p1

    div-int/lit8 v1, v1, 0x64

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v1, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->mProfileIconLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->mProfileIconLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method private resizeToProfileImage(I)V
    .locals 2

    iget-object v1, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->mProfileIcon:Lcom/sec/game/gamecast/common/utility/CommonRoundIcon;

    invoke-virtual {v1}, Lcom/sec/game/gamecast/common/utility/CommonRoundIcon;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v1, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->mRecordDefault:I

    mul-int/2addr v1, p1

    div-int/lit8 v1, v1, 0x64

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget v1, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->mRecordDefault:I

    mul-int/2addr v1, p1

    div-int/lit8 v1, v1, 0x64

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget-object v1, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->mProfileIcon:Lcom/sec/game/gamecast/common/utility/CommonRoundIcon;

    invoke-virtual {v1, v0}, Lcom/sec/game/gamecast/common/utility/CommonRoundIcon;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->mProfileIcon:Lcom/sec/game/gamecast/common/utility/CommonRoundIcon;

    invoke-virtual {v1}, Lcom/sec/game/gamecast/common/utility/CommonRoundIcon;->invalidate()V

    return-void
.end method

.method private setAudioSource()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->getmActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/game/gamecast/common/model/SettingData;->getAudioSource(Landroid/content/Context;)I

    move-result v0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->mMicrophoneRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->mGameAudioRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->mMicrophoneRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->mGameAudioRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0
.end method

.method private setProfileImage()V
    .locals 9

    const v3, 0x7f020041

    const/4 v1, 0x0

    const/16 v6, 0x17

    const/4 v8, 0x0

    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->getmActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->mProfileSource:I

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->imgLoader:Lcom/sec/game/gamecast/common/utility/ImageLoader;

    iget-object v2, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->mProfileIcon:Lcom/sec/game/gamecast/common/utility/CommonRoundIcon;

    const v3, 0x7f020045

    move v5, v4

    invoke-virtual/range {v0 .. v6}, Lcom/sec/game/gamecast/common/utility/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;IZZI)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->mProfileEdit:Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->mProfileEdit:Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setFocusable(Z)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->mProfileEdit:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->mProfile_seek_bar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v4}, Landroid/widget/SeekBar;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->mProfile_seek_bar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v4}, Landroid/widget/SeekBar;->setFocusable(Z)V

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->mProfileSource:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->imgLoader:Lcom/sec/game/gamecast/common/utility/ImageLoader;

    iget-object v2, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->mProfileIcon:Lcom/sec/game/gamecast/common/utility/CommonRoundIcon;

    move v5, v4

    invoke-virtual/range {v0 .. v6}, Lcom/sec/game/gamecast/common/utility/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;IZZI)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->mProfileEdit:Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->mProfileEdit:Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setFocusable(Z)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->mProfileEdit:Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->mProfileEdit:Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setFocusable(Z)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->mProfile_seek_bar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v8}, Landroid/widget/SeekBar;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->mProfile_seek_bar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v8}, Landroid/widget/SeekBar;->setFocusable(Z)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->mProfileEdit:Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->semSetHoverPopupType(I)V

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->mProfileSource:I

    if-ne v0, v4, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->mIsProfileImageEnable:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->imgLoader:Lcom/sec/game/gamecast/common/utility/ImageLoader;

    iget-object v2, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->mImagePath:Ljava/lang/String;

    invoke-virtual {v0, v2, v6, v4}, Lcom/sec/game/gamecast/common/utility/ImageLoader;->createBitmapDrawable(Ljava/lang/String;IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    if-eqz v7, :cond_5

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->mProfileIcon:Lcom/sec/game/gamecast/common/utility/CommonRoundIcon;

    iget-object v1, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->imgLoader:Lcom/sec/game/gamecast/common/utility/ImageLoader;

    iget-object v2, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->mImagePath:Ljava/lang/String;

    invoke-virtual {v1, v2, v6, v4}, Lcom/sec/game/gamecast/common/utility/ImageLoader;->createBitmapDrawable(Ljava/lang/String;IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/game/gamecast/common/utility/CommonRoundIcon;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_1
    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->mProfileEdit:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->mProfileEdit:Landroid/widget/ImageView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f060280

    invoke-virtual {p0, v2}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f0603b7

    invoke-virtual {p0, v2}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->mProfileEdit:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setFocusable(Z)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->mProfileEdit:Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->mProfileEdit:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setFocusable(Z)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->mProfile_seek_bar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v4}, Landroid/widget/SeekBar;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->mProfile_seek_bar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v4}, Landroid/widget/SeekBar;->setFocusable(Z)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->mProfileEdit:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->semSetHoverPopupType(I)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->mProfileEdit:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->semGetHoverPopup(Z)Lcom/samsung/android/widget/SemHoverPopupWindow;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->mProfileEdit:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->semGetHoverPopup(Z)Lcom/samsung/android/widget/SemHoverPopupWindow;

    move-result-object v0

    const v1, 0x7f060280

    invoke-virtual {p0, v1}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/widget/SemHoverPopupWindow;->setContent(Ljava/lang/CharSequence;)V

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->mProfileEdit:Landroid/widget/ImageView;

    new-instance v1, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment$11;

    invoke-direct {v1, p0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment$11;-><init>(Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->mProfileIcon:Lcom/sec/game/gamecast/common/utility/CommonRoundIcon;

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/game/gamecast/common/utility/CommonRoundIcon;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->mProfileIcon:Lcom/sec/game/gamecast/common/utility/CommonRoundIcon;

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/game/gamecast/common/utility/CommonRoundIcon;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1
.end method

.method private setProfileSeekBar()V
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->getmActivity()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->mProfileSize:Landroid/widget/LinearLayout;

    const v2, 0x7f0b00c3

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->mProfileIconLayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->mProfileSize:Landroid/widget/LinearLayout;

    const v2, 0x7f0b00c9

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar;

    iput-object v1, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->mProfile_seek_bar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->mPercent:I

    invoke-direct {p0, v1}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->getPercentToProgress(I)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->mProfile_seek_bar:Landroid/widget/SeekBar;

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    iget-object v1, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->mProfile_seek_bar:Landroid/widget/SeekBar;

    iget-object v2, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->mSeekBarListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    invoke-direct {p0, v0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->resizeProfileImages(I)V

    goto :goto_0
.end method

.method private setProfileSource()V
    .locals 5

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v3, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->mFrontCameraRadioButton:Landroid/widget/RadioButton;

    iget v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->mProfileSource:I

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v3, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->mProfileImageRadioButton:Landroid/widget/RadioButton;

    iget v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->mProfileSource:I

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->mNoneRadioButton:Landroid/widget/RadioButton;

    iget v3, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->mProfileSource:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_2
.end method

.method private setRadioButtonTTS()V
    .locals 12

    const v11, 0x7f0b0057

    const v10, 0x7f0b0040

    const v7, 0x7f0603bf

    invoke-virtual {p0, v7}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f0603bd

    invoke-virtual {p0, v7}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v7, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->mFrontCameraRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v7}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_0

    move-object v0, v6

    :goto_0
    iget-object v8, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->mFrontCameraLayout:Landroid/widget/LinearLayout;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->mFrontCameraLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v10}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v9, ", "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v7, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->mFrontCameraLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v11}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v9, ", "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v7, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->mProfileImageRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v7}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_1

    move-object v5, v6

    :goto_1
    iget-object v8, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->mProfileImageLayout:Landroid/widget/LinearLayout;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->mProfileImageLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v10}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v9, ", "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v7, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->mProfileImageLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v11}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v9, ", "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v7, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->mNoneRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v7}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_2

    move-object v3, v6

    :goto_2
    iget-object v8, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->mNoneLayout:Landroid/widget/LinearLayout;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->mNoneLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v10}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v9, ", "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v7, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->mNoneLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v11}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v9, ", "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v7, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->mMicrophoneRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v7}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_3

    move-object v2, v6

    :goto_3
    iget-object v8, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->mMicrophoneLayout:Landroid/widget/LinearLayout;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->mMicrophoneLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v10}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v9, ", "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v7, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->mMicrophoneLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v11}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v9, ", "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v7, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->mGameAudioRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v7}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_4

    move-object v1, v6

    :goto_4
    iget-object v8, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->mGameAudioLayout:Landroid/widget/LinearLayout;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->mGameAudioLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v10}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v9, ", "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v7, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->mGameAudioLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v11}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v9, ", "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    move-object v0, v4

    goto/16 :goto_0

    :cond_1
    move-object v5, v4

    goto/16 :goto_1

    :cond_2
    move-object v3, v4

    goto/16 :goto_2

    :cond_3
    move-object v2, v4

    goto/16 :goto_3

    :cond_4
    move-object v1, v4

    goto :goto_4
.end method

.method private setRecordingBitrate(I)V
    .locals 8

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->mBitrate:Landroid/widget/LinearLayout;

    const v1, 0x7f0b0057

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setRecordingBitrate : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/game/gamecast/common/logger/TLog;->d(Ljava/lang/String;)V

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/game/gamecast/common/model/SettingData;->getAutoBPS(Landroid/content/Context;)I

    move-result v6

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->getmActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, v6}, Lcom/sec/game/gamecast/common/model/SettingData;->setAutoBitrate(Landroid/content/Context;I)V

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->getmActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/game/gamecast/common/model/SettingData;->setBitrate(Landroid/content/Context;I)V

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->getmActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/game/gamecast/common/utility/ContextProviderUtil;->getinstance(Landroid/content/Context;)Lcom/sec/game/gamecast/common/utility/ContextProviderUtil;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->getmActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "GT00"

    sget-object v3, Lcom/sec/game/gamecast/common/constant/BigData;->BIGDATA_BITRATE_LIST:[Ljava/lang/String;

    aget-object v3, v3, p1

    const-wide/16 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/sec/game/gamecast/common/utility/ContextProviderUtil;->insertFeatureLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->mBitrateAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->mBitrate:Landroid/widget/LinearLayout;

    const v1, 0x7f0b00e5

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0603f0

    invoke-virtual {p0, v2}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v2, 0x7f06028f

    invoke-virtual {p0, v2}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->mBitrateAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v2, 0x7f0603cd

    invoke-virtual {p0, v2}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->getmActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/sec/game/gamecast/common/model/SettingData;->setBitrateUI(Landroid/content/Context;I)V

    goto/16 :goto_0
.end method

.method private setRecordingResolution(Ljava/lang/String;)V
    .locals 10

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->getmActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/sec/game/gamecast/common/model/SettingData;->isBitrateAuto(Landroid/content/Context;)Z

    move-result v0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setRecordingResolution  autoOn : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/sec/game/gamecast/common/logger/TLog;->d(Ljava/lang/String;)V

    const/4 v6, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/sec/game/gamecast/common/model/SettingData;->getAutoBPS(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->getmActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v1}, Lcom/sec/game/gamecast/common/model/SettingData;->setAutoBitrate(Landroid/content/Context;I)V

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->getmActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sget-object v7, Lcom/sec/game/gamecast/common/model/SettingData;->RESOLUTION_PRESET_LIST:[Ljava/lang/String;

    const/4 v8, 0x1

    aget-object v7, v7, v8

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const v7, 0x7f060443

    invoke-virtual {v2, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x1

    :goto_0
    iget-object v7, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->mResolution:Landroid/widget/LinearLayout;

    const v8, 0x7f0b0057

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->getmActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f0602aa

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " (16:9)"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v7, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->mResolution:Landroid/widget/LinearLayout;

    const v8, 0x7f0b00e5

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const v9, 0x7f0603f0

    invoke-virtual {p0, v9}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const v9, 0x7f0603cd

    invoke-virtual {p0, v9}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void

    :cond_1
    sget-object v7, Lcom/sec/game/gamecast/common/model/SettingData;->RESOLUTION_PRESET_LIST:[Ljava/lang/String;

    const/4 v8, 0x2

    aget-object v7, v7, v8

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const v7, 0x7f060442

    invoke-virtual {v2, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x2

    goto/16 :goto_0

    :cond_2
    sget-object v7, Lcom/sec/game/gamecast/common/model/SettingData;->RESOLUTION_PRESET_LIST:[Ljava/lang/String;

    const/4 v8, 0x3

    aget-object v7, v7, v8

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const v7, 0x7f060441

    invoke-virtual {v2, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x3

    goto/16 :goto_0

    :cond_3
    sget-object v7, Lcom/sec/game/gamecast/common/model/SettingData;->RESOLUTION_PRESET_LIST:[Ljava/lang/String;

    const/4 v8, 0x4

    aget-object v7, v7, v8

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    const v7, 0x7f060440

    invoke-virtual {v2, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x4

    goto/16 :goto_0

    :cond_4
    const v7, 0x7f06043f

    invoke-virtual {v2, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    goto/16 :goto_0
.end method

.method private setResolutionAdapter(Landroid/content/Context;Landroid/widget/ArrayAdapter;[Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    array-length v1, p3

    if-ge v0, v1, :cond_1

    aget-object v2, p3, v0

    const/4 v1, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_0
    :goto_1
    packed-switch v1, :pswitch_data_0

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :sswitch_0
    const-string/jumbo v3, "1920x1080"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    goto :goto_1

    :sswitch_1
    const-string/jumbo v3, "1280x720"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :sswitch_2
    const-string/jumbo v3, "960x540"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x2

    goto :goto_1

    :sswitch_3
    const-string/jumbo v3, "854x480"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x3

    goto :goto_1

    :sswitch_4
    const-string/jumbo v3, "640x360"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x4

    goto :goto_1

    :pswitch_0
    const v1, 0x7f06043f

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    goto :goto_2

    :pswitch_1
    const v1, 0x7f060443

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    goto :goto_2

    :pswitch_2
    const v1, 0x7f060442

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    goto :goto_2

    :pswitch_3
    const v1, 0x7f060441

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    goto :goto_2

    :pswitch_4
    const v1, 0x7f060440

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7bd7c519 -> :sswitch_4
        -0x6683aa6a -> :sswitch_1
        -0x101e13f5 -> :sswitch_3
        0x2644a52c -> :sswitch_2
        0x2fce7329 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method bindListener()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->mFrontCameraLayout:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment$1;-><init>(Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->mProfileImageLayout:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment$2;-><init>(Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->mNoneLayout:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment$3;-><init>(Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->mMicrophoneLayout:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment$4;

    invoke-direct {v1, p0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment$4;-><init>(Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->mGameAudioLayout:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment$5;

    invoke-direct {v1, p0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment$5;-><init>(Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->mResolution:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment$6;

    invoke-direct {v1, p0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment$6;-><init>(Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->mBitrate:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment$7;

    invoke-direct {v1, p0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment$7;-><init>(Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public initBitrate()V
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->getmActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/widget/ArrayAdapter;

    const v2, 0x7f03003e

    invoke-direct {v1, v0, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->mBitrateAdapter:Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->mBitrateAdapter:Landroid/widget/ArrayAdapter;

    const v2, 0x7f060372

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->mBitrateAdapter:Landroid/widget/ArrayAdapter;

    const v2, 0x7f060450

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->mBitrateAdapter:Landroid/widget/ArrayAdapter;

    const v2, 0x7f06044f

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->mBitrateAdapter:Landroid/widget/ArrayAdapter;

    const v2, 0x7f06044d

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->mBitrateAdapter:Landroid/widget/ArrayAdapter;

    const v2, 0x7f06044a

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->mBitrateSpinner:Landroid/widget/Spinner;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setVisibility(I)V

    iget-object v1, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->mBitrateSpinner:Landroid/widget/Spinner;

    iget-object v2, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->mBitrateAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object v1, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->mBitrateSpinner:Landroid/widget/Spinner;

    invoke-static {v0}, Lcom/sec/game/gamecast/common/model/SettingData;->getBitrateUI(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setSelection(I)V

    iget-object v1, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->mBitrateSpinner:Landroid/widget/Spinner;

    new-instance v2, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment$9;

    invoke-direct {v2, p0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment$9;-><init>(Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    return-void
.end method

.method public initResolution()V
    .locals 4

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->getmActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v2, Landroid/widget/ArrayAdapter;

    const v3, 0x7f03003e

    invoke-direct {v2, v0, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->mResolutionAdapter:Landroid/widget/ArrayAdapter;

    invoke-static {v0}, Lcom/sec/game/gamecast/common/model/SettingUtil;->get(Landroid/content/Context;)Lcom/sec/game/gamecast/common/model/SettingUtil;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/game/gamecast/common/model/SettingUtil;->getDeviceBasedResolutionList(Z)[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->mResolutionAdapter:Landroid/widget/ArrayAdapter;

    invoke-direct {p0, v0, v2, v1}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->setResolutionAdapter(Landroid/content/Context;Landroid/widget/ArrayAdapter;[Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->mResolutionSpinner:Landroid/widget/Spinner;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setVisibility(I)V

    iget-object v2, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->mResolutionSpinner:Landroid/widget/Spinner;

    iget-object v3, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->mResolutionAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object v2, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->mResolutionSpinner:Landroid/widget/Spinner;

    invoke-direct {p0, v1}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->getResolutionIndex([Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setSelection(I)V

    iget-object v2, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->mResolutionSpinner:Landroid/widget/Spinner;

    new-instance v3, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment$8;

    invoke-direct {v3, p0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment$8;-><init>(Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    return-void
.end method

.method loadData()V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->getmActivity()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->getmActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/game/gamecast/common/model/SettingData;->getUserProfileSize(Landroid/content/Context;)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->mPercent:I

    invoke-static {v0}, Lcom/sec/game/gamecast/common/model/SettingData;->getUserProfileImageEnable(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->mIsProfileImageEnable:Z

    invoke-static {v0}, Lcom/sec/game/gamecast/common/model/SettingData;->getProfileSource(Landroid/content/Context;)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->mProfileSource:I

    iget-boolean v1, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->mIsProfileImageEnable:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->getmActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/game/gamecast/common/model/SettingData;->getUserProfileImage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->mImagePath:Ljava/lang/String;

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/game/gametools/setting/fragment/ImageSelectorFragment;->onActivityCreated(Landroid/os/Bundle;)V

    return-void
.end method

.method onClickGameAudio()V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->getmActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->mGameAudioRadioButton:Landroid/widget/RadioButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->mMicrophoneRadioButton:Landroid/widget/RadioButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    invoke-direct {p0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->setRadioButtonTTS()V

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->getmActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/sec/game/gamecast/common/model/SettingData;->setAudioSource(Landroid/content/Context;I)V

    :cond_0
    return-void
.end method

.method onClickMicrophone()V
    .locals 3

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->getmActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->mGameAudioRadioButton:Landroid/widget/RadioButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->mMicrophoneRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    invoke-direct {p0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->setRadioButtonTTS()V

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->getmActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/sec/game/gamecast/common/model/SettingData;->setAudioSource(Landroid/content/Context;I)V

    :cond_0
    return-void
.end method

.method onClickProfileSourceCamera()V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->getmActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->mFrontCameraRadioButton:Landroid/widget/RadioButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->mProfileImageRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->mNoneRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    invoke-direct {p0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->setRadioButtonTTS()V

    iput v2, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->mProfileSource:I

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->getmActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->mProfileSource:I

    invoke-static {v0, v1}, Lcom/sec/game/gamecast/common/model/SettingData;->setProfileSource(Landroid/content/Context;I)V

    invoke-direct {p0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->setProfileImage()V

    :cond_0
    return-void
.end method

.method onClickProfileSourceImage()V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->getmActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->mFrontCameraRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->mProfileImageRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->mNoneRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    invoke-direct {p0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->setRadioButtonTTS()V

    iput v2, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->mProfileSource:I

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->getmActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->mProfileSource:I

    invoke-static {v0, v1}, Lcom/sec/game/gamecast/common/model/SettingData;->setProfileSource(Landroid/content/Context;I)V

    invoke-direct {p0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->setProfileImage()V

    :cond_0
    return-void
.end method

.method onClickProfileSourceNone()V
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->getmActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->mFrontCameraRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->mProfileImageRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->mNoneRadioButton:Landroid/widget/RadioButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    invoke-direct {p0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->setRadioButtonTTS()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->mProfileSource:I

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->getmActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->mProfileSource:I

    invoke-static {v0, v1}, Lcom/sec/game/gamecast/common/model/SettingData;->setProfileSource(Landroid/content/Context;I)V

    invoke-direct {p0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->setProfileImage()V

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 10

    const v9, 0x7f0b00ca

    const/4 v8, 0x0

    const v7, 0x7f0b0057

    const/4 v6, 0x1

    const v5, 0x7f0b0040

    if-nez p2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/game/gametools/setting/fragment/ImageSelectorFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    const v2, 0x7f030009

    invoke-virtual {p1, v2, p2, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->mRootView:Landroid/view/View;

    iget-object v2, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->mRootView:Landroid/view/View;

    const v3, 0x7f0b0027

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->mProfileSourceHeader:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->mProfileSourceHeader:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0602a6

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    iget-object v2, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->mProfileSourceHeader:Landroid/widget/LinearLayout;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f0602a6

    invoke-virtual {p0, v4}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x7f0603d2

    invoke-virtual {p0, v4}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->mRootView:Landroid/view/View;

    const v3, 0x7f0b002c

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->mAudioSourceHeader:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->mAudioSourceHeader:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f06028e

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    iget-object v2, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->mAudioSourceHeader:Landroid/widget/LinearLayout;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f06028e

    invoke-virtual {p0, v4}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x7f0603d2

    invoke-virtual {p0, v4}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->mRootView:Landroid/view/View;

    const v3, 0x7f0b002f

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->mResolutionHeader:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->mResolutionHeader:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0602af

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    iget-object v2, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->mResolutionHeader:Landroid/widget/LinearLayout;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f0602af

    invoke-virtual {p0, v4}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x7f0603d2

    invoke-virtual {p0, v4}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->mRootView:Landroid/view/View;

    const v3, 0x7f0b0029

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->mProfileImageLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->mProfileImageLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v9}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    iput-object v2, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->mProfileImageRadioButton:Landroid/widget/RadioButton;

    iget-object v2, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->mProfileImageLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0602e4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    iget-object v2, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->mProfileImageLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f060300

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->getmActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->mProfileImageLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v2, v3, v6}, Lcom/sec/game/gamecast/common/utility/ThemeUtil;->setTextColorToColorSecondary(Landroid/content/Context;Ljava/lang/Object;Z)V

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->getmActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->mProfileImageLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v2, v3, v6}, Lcom/sec/game/gamecast/common/utility/ThemeUtil;->setTextColorToTextColorPrimary(Landroid/content/Context;Ljava/lang/Object;Z)V

    iget-object v2, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->mRootView:Landroid/view/View;

    const v3, 0x7f0b002a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->mFrontCameraLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->mFrontCameraLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v9}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    iput-object v2, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->mFrontCameraRadioButton:Landroid/widget/RadioButton;

    iget-object v2, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->mFrontCameraLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0602da

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    iget-object v2, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->mFrontCameraLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0603b0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->getmActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->mFrontCameraLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v2, v3, v6}, Lcom/sec/game/gamecast/common/utility/ThemeUtil;->setTextColorToColorSecondary(Landroid/content/Context;Ljava/lang/Object;Z)V

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->getmActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->mFrontCameraLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v2, v3, v6}, Lcom/sec/game/gamecast/common/utility/ThemeUtil;->setTextColorToTextColorPrimary(Landroid/content/Context;Ljava/lang/Object;Z)V

    iget-object v2, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->mRootView:Landroid/view/View;

    const v3, 0x7f0b002b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->mNoneLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->mNoneLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v9}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    iput-object v2, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->mNoneRadioButton:Landroid/widget/RadioButton;

    iget-object v2, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->mNoneLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0602ee

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    iget-object v2, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->mNoneLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0603a5

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->getmActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->mNoneLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v2, v3, v6}, Lcom/sec/game/gamecast/common/utility/ThemeUtil;->setTextColorToColorSecondary(Landroid/content/Context;Ljava/lang/Object;Z)V

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->getmActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->mNoneLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v2, v3, v6}, Lcom/sec/game/gamecast/common/utility/ThemeUtil;->setTextColorToTextColorPrimary(Landroid/content/Context;Ljava/lang/Object;Z)V

    iget-object v2, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->mRootView:Landroid/view/View;

    const v3, 0x7f0b002d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->mMicrophoneLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->mMicrophoneLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v9}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    iput-object v2, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->mMicrophoneRadioButton:Landroid/widget/RadioButton;

    iget-object v2, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->mMicrophoneLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0602eb

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    invoke-static {}, Lcom/sec/game/gamecast/common/utility/DeviceUtil;->isVerizonDevice()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->mMicrophoneLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0603a1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->getmActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->mMicrophoneLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v2, v3, v6}, Lcom/sec/game/gamecast/common/utility/ThemeUtil;->setTextColorToColorSecondary(Landroid/content/Context;Ljava/lang/Object;Z)V

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->getmActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->mMicrophoneLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v2, v3, v6}, Lcom/sec/game/gamecast/common/utility/ThemeUtil;->setTextColorToTextColorPrimary(Landroid/content/Context;Ljava/lang/Object;Z)V

    iget-object v2, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->mRootView:Landroid/view/View;

    const v3, 0x7f0b002e

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->mGameAudioLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->mGameAudioLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v9}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    iput-object v2, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->mGameAudioRadioButton:Landroid/widget/RadioButton;

    iget-object v2, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->mGameAudioLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0602a4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    iget-object v2, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->mGameAudioLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0603a0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->getmActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->mGameAudioLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v2, v3, v6}, Lcom/sec/game/gamecast/common/utility/ThemeUtil;->setTextColorToColorSecondary(Landroid/content/Context;Ljava/lang/Object;Z)V

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->getmActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->mGameAudioLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v2, v3, v6}, Lcom/sec/game/gamecast/common/utility/ThemeUtil;->setTextColorToTextColorPrimary(Landroid/content/Context;Ljava/lang/Object;Z)V

    iget-object v2, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->mRootView:Landroid/view/View;

    const v3, 0x7f0b0030

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->mMaxFileSize:Landroid/widget/TextView;

    const v2, 0x7f0601c5

    invoke-virtual {p0, v2}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    const/4 v4, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->mMaxFileSize:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->getmActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->mMaxFileSize:Landroid/widget/TextView;

    invoke-static {v2, v3, v6}, Lcom/sec/game/gamecast/common/utility/ThemeUtil;->setTextColorToColorSecondary(Landroid/content/Context;Ljava/lang/Object;Z)V

    iget-object v2, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->mRootView:Landroid/view/View;

    const v3, 0x7f0b0032

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->mResolution:Landroid/widget/LinearLayout;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->getmActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0602aa

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " (16:9)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->mResolution:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->getmActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->mResolution:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v2, v3, v8}, Lcom/sec/game/gamecast/common/utility/ThemeUtil;->setTextColorToColorPrimaryDark(Landroid/content/Context;Ljava/lang/Object;Z)V

    iget-object v2, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->mResolution:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v8}, Landroid/widget/LinearLayout;->setSoundEffectsEnabled(Z)V

    iget-object v2, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->mRootView:Landroid/view/View;

    const v3, 0x7f0b0031

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    iput-object v2, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->mResolutionSpinner:Landroid/widget/Spinner;

    iget-object v2, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->mRootView:Landroid/view/View;

    const v3, 0x7f0b0034

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->mBitrate:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->mBitrate:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f06028f

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->getmActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->mBitrate:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v2, v3, v8}, Lcom/sec/game/gamecast/common/utility/ThemeUtil;->setTextColorToColorPrimaryDark(Landroid/content/Context;Ljava/lang/Object;Z)V

    iget-object v2, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->mBitrate:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v8}, Landroid/widget/LinearLayout;->setSoundEffectsEnabled(Z)V

    iget-object v2, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->mRootView:Landroid/view/View;

    const v3, 0x7f0b0033

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    iput-object v2, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->mBitrateSpinner:Landroid/widget/Spinner;

    iget-object v2, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->mRootView:Landroid/view/View;

    const v3, 0x7f0b0028

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->mProfileSize:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->mProfileSize:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v8}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    iget-object v2, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->mProfileSize:Landroid/widget/LinearLayout;

    const v3, 0x7f0b00c4

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sec/game/gamecast/common/utility/CommonRoundIcon;

    iput-object v2, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->mProfileIcon:Lcom/sec/game/gamecast/common/utility/CommonRoundIcon;

    iget-object v2, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->mProfileSize:Landroid/widget/LinearLayout;

    const v3, 0x7f0b00c5

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->mProfileEdit:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->mProfileSize:Landroid/widget/LinearLayout;

    const v3, 0x7f0b00c9

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/SeekBar;

    iput-object v2, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->mProfile_seek_bar:Landroid/widget/SeekBar;

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->getmActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/game/gamecast/common/utility/ThemeUtil;->isThemeOn(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->mProfile_seek_bar:Landroid/widget/SeekBar;

    invoke-virtual {v2, v6}, Landroid/widget/SeekBar;->semSetFluidEnabled(Z)V

    :goto_2
    iget-object v2, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->mProfileSize:Landroid/widget/LinearLayout;

    const v3, 0x7f0b00c6

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->mSeekbarLayout:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->mSeekbarLayout:Landroid/widget/FrameLayout;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f0602a6

    invoke-virtual {p0, v4}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x7f0601f5

    invoke-virtual {p0, v4}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x7f0601c0

    invoke-virtual {p0, v4}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->getmActivity()Landroid/app/Activity;

    move-result-object v2

    sget v3, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->DEFAULT_PROFILE_IMAGE_SIZE:I

    int-to-double v4, v3

    invoke-static {v2, v4, v5}, Lcom/sec/game/gamecast/common/utility/CommonUiUtil;->getDpToPix(Landroid/content/Context;D)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->mRecordDefault:I

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->initResolution()V

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->initBitrate()V

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->loadData()V

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->bindListener()V

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->updateCurrentLayout()V

    invoke-direct {p0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->setRadioButtonTTS()V

    const-string/jumbo v2, "904"

    invoke-static {v2}, Lcom/sec/game/gamecast/common/utility/CommonUtil;->sendSALog(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->mRootView:Landroid/view/View;

    goto/16 :goto_0

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->mMicrophoneLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0602f5

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_1

    :cond_2
    iget-object v2, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->mProfile_seek_bar:Landroid/widget/SeekBar;

    invoke-virtual {v2, v8}, Landroid/widget/SeekBar;->semSetFluidEnabled(Z)V

    goto/16 :goto_2
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Lcom/samsung/android/game/gametools/setting/fragment/ImageSelectorFragment;->onResume()V

    iget-boolean v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->isExistSettingImage:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->mTempImagePath:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->mImagePath:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->mIsProfileImageEnable:Z

    invoke-direct {p0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->setProfileImage()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->isExistSettingImage:Z

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->mImagePath:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->mImagePath:Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->mImagePath:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->saveImage(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->getmActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f060242

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(I)V

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->updateCurrentStatusFromSharedPreference()V

    const-string/jumbo v0, "904"

    invoke-static {v0}, Lcom/sec/game/gamecast/common/utility/CommonUtil;->sendSALog(Ljava/lang/String;)V

    return-void
.end method

.method updateCurrentLayout()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->setProfileSource()V

    invoke-direct {p0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->setAudioSource()V

    invoke-direct {p0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->setProfileSeekBar()V

    invoke-direct {p0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->setProfileImage()V

    return-void
.end method

.method updateCurrentStatusFromSharedPreference()V
    .locals 0

    return-void
.end method
