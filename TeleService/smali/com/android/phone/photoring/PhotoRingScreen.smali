.class public Lcom/android/phone/photoring/PhotoRingScreen;
.super Landroid/app/Activity;
.source "PhotoRingScreen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/photoring/PhotoRingScreen$1;,
        Lcom/android/phone/photoring/PhotoRingScreen$2;,
        Lcom/android/phone/photoring/PhotoRingScreen$3;,
        Lcom/android/phone/photoring/PhotoRingScreen$4;,
        Lcom/android/phone/photoring/PhotoRingScreen$5;,
        Lcom/android/phone/photoring/PhotoRingScreen$6;,
        Lcom/android/phone/photoring/PhotoRingScreen$MobileDataBroadcastReceiver;,
        Lcom/android/phone/photoring/PhotoRingScreen$PROJECTION_NUMBER;,
        Lcom/android/phone/photoring/PhotoRingScreen$ResizeProgress;,
        Lcom/android/phone/photoring/PhotoRingScreen$ResizeThread;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static final PHONE_URI:Landroid/net/Uri;

.field public static final THUMBNAIL_PROJECTION_VIDEOS:[Ljava/lang/String;

.field public static VIDEO_DURATION_LIMIT:I

.field private static mCaptureFile:Ljava/lang/String;

.field public static mUriCamera:Landroid/net/Uri;

.field public static mUriVideos:Landroid/net/Uri;


# instance fields
.field private final CONTENT_FROM_GALLERY:I

.field private final CONTENT_FROM_MO_LOG:I

.field private final CONTENT_IMAGE:I

.field private final CONTENT_NONE:I

.field private final CONTENT_VIDEO:I

.field private PRUrl:Ljava/lang/String;

.field private bEmptyNumErr:Z

.field private bMobileOffPopup:Z

.field private bMobileOnPopup:Z

.field private bShowOnly:Z

.field private bUnregierShowme:Z

.field private bisExcuted:Z

.field private cancellistener:Landroid/content/DialogInterface$OnCancelListener;

.field private chgUrl:Ljava/lang/String;

.field private clickListenerToDismiss:Landroid/content/DialogInterface$OnClickListener;

.field private clickListenerToFinish:Landroid/content/DialogInterface$OnClickListener;

.field private clickListenerToUpload:Landroid/content/DialogInterface$OnClickListener;

.field private contactName:Ljava/lang/String;

.field private contentUrl:Ljava/lang/String;

.field private gUtil:Lcom/android/phone/photoring/GifUtil;

.field private iMM:Landroid/view/inputmethod/InputMethodManager;

.field private isAgif:Z

.field private mBTN_MediaEdit:Landroid/widget/Button;

.field private mBTN_MessageList:Landroid/widget/Button;

.field private mBTN_Send:Landroid/widget/Button;

.field mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

.field private mByteCnt:Landroid/widget/TextView;

.field private mCB:Landroid/widget/CheckBox;

.field private mCallMessageNetworkListener:Lcom/android/phone/photoring/ICallMessageNetworkListener;

.field private mContactImageButton:Landroid/widget/ImageButton;

.field private mContentFrom:I

.field private mContentType:I

.field private mFilePath:Ljava/lang/String;

.field mHandler:Landroid/os/Handler;

.field private mHasphotoringToDial:Z

.field private mIsOverLength:Z

.field private mMenuDialog:Landroid/app/AlertDialog;

.field public mNameView:Landroid/widget/TextView;

.field mNewResize:Lcom/android/phone/photoring/PhotoRingScreen$ResizeThread;

.field private mNumber:Ljava/lang/String;

.field public mNumberText:Landroid/widget/AutoCompleteTextView;

.field private mNumberTextIsContactsName:Z

.field private mPM:Lcom/android/phone/photoring/PhotoRingMgr;

.field public mPhotoringContentsText:Landroid/widget/TextView;

.field private mPreparedMediaButton:Landroid/widget/ImageView;

.field private mProgress:Landroid/app/ProgressDialog;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mRecipientsText:Landroid/widget/AutoCompleteTextView;

.field mResizeProgress:Lcom/android/phone/photoring/PhotoRingScreen$ResizeProgress;

.field private mResizingdialog:Landroid/app/ProgressDialog;

.field mStateListener:Lcom/android/phone/ia/IAInterimListener;

.field private mThumbHeight:I

.field public mVideoErrIcon:Landroid/widget/ImageView;

.field mVideoTranscoder:Lcom/samsung/android/media/codec/SemVideoTranscoder;

.field private needDownContent:Z

.field private pMe:Landroid/content/Context;

.field private prevFilePath:Ljava/lang/String;

.field private uploadPath:Ljava/lang/String;


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/android/phone/photoring/PhotoRingScreen;->DBG:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/phone/photoring/PhotoRingScreen;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoRingScreen;->PRUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get10(Lcom/android/phone/photoring/PhotoRingScreen;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mHasphotoringToDial:Z

    return v0
.end method

.method static synthetic -get11(Lcom/android/phone/photoring/PhotoRingScreen;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mNumber:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get12(Lcom/android/phone/photoring/PhotoRingScreen;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mNumberTextIsContactsName:Z

    return v0
.end method

.method static synthetic -get13(Lcom/android/phone/photoring/PhotoRingScreen;)Lcom/android/phone/photoring/PhotoRingMgr;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mPM:Lcom/android/phone/photoring/PhotoRingMgr;

    return-object v0
.end method

.method static synthetic -get14(Lcom/android/phone/photoring/PhotoRingScreen;)Landroid/app/ProgressDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mProgress:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic -get15(Lcom/android/phone/photoring/PhotoRingScreen;)Landroid/widget/AutoCompleteTextView;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mRecipientsText:Landroid/widget/AutoCompleteTextView;

    return-object v0
.end method

.method static synthetic -get16(Lcom/android/phone/photoring/PhotoRingScreen;)Landroid/app/ProgressDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mResizingdialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic -get17(Lcom/android/phone/photoring/PhotoRingScreen;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/phone/photoring/PhotoRingScreen;->needDownContent:Z

    return v0
.end method

.method static synthetic -get18(Lcom/android/phone/photoring/PhotoRingScreen;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoRingScreen;->pMe:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get19(Lcom/android/phone/photoring/PhotoRingScreen;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoRingScreen;->uploadPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/phone/photoring/PhotoRingScreen;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/phone/photoring/PhotoRingScreen;->bEmptyNumErr:Z

    return v0
.end method

.method static synthetic -get3(Lcom/android/phone/photoring/PhotoRingScreen;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/phone/photoring/PhotoRingScreen;->bShowOnly:Z

    return v0
.end method

.method static synthetic -get4(Lcom/android/phone/photoring/PhotoRingScreen;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoRingScreen;->chgUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/phone/photoring/PhotoRingScreen;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoRingScreen;->clickListenerToUpload:Landroid/content/DialogInterface$OnClickListener;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/phone/photoring/PhotoRingScreen;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoRingScreen;->contactName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/phone/photoring/PhotoRingScreen;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoRingScreen;->contentUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/phone/photoring/PhotoRingScreen;)Landroid/widget/CheckBox;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mCB:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/phone/photoring/PhotoRingScreen;)I
    .locals 1

    iget v0, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mContentType:I

    return v0
.end method

.method static synthetic -set0(Lcom/android/phone/photoring/PhotoRingScreen;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/phone/photoring/PhotoRingScreen;->bEmptyNumErr:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/phone/photoring/PhotoRingScreen;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/phone/photoring/PhotoRingScreen;->bShowOnly:Z

    return p1
.end method

.method static synthetic -set10(Lcom/android/phone/photoring/PhotoRingScreen;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0

    iput-object p1, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mProgress:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic -set11(Lcom/android/phone/photoring/PhotoRingScreen;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/phone/photoring/PhotoRingScreen;->needDownContent:Z

    return p1
.end method

.method static synthetic -set12(Lcom/android/phone/photoring/PhotoRingScreen;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/phone/photoring/PhotoRingScreen;->uploadPath:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set2(Lcom/android/phone/photoring/PhotoRingScreen;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/phone/photoring/PhotoRingScreen;->bUnregierShowme:Z

    return p1
.end method

.method static synthetic -set3(Lcom/android/phone/photoring/PhotoRingScreen;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/phone/photoring/PhotoRingScreen;->chgUrl:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set4(Lcom/android/phone/photoring/PhotoRingScreen;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/phone/photoring/PhotoRingScreen;->contactName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set5(Lcom/android/phone/photoring/PhotoRingScreen;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/phone/photoring/PhotoRingScreen;->contentUrl:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set6(Lcom/android/phone/photoring/PhotoRingScreen;I)I
    .locals 0

    iput p1, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mContentType:I

    return p1
.end method

.method static synthetic -set7(Lcom/android/phone/photoring/PhotoRingScreen;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mHasphotoringToDial:Z

    return p1
.end method

.method static synthetic -set8(Lcom/android/phone/photoring/PhotoRingScreen;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mNumber:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set9(Lcom/android/phone/photoring/PhotoRingScreen;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mNumberTextIsContactsName:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/phone/photoring/PhotoRingScreen;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/phone/photoring/PhotoRingScreen;->checkMobileData()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/phone/photoring/PhotoRingScreen;Ljava/lang/CharSequence;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/phone/photoring/PhotoRingScreen;->isValidNumber(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap10(Lcom/android/phone/photoring/PhotoRingScreen;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/photoring/PhotoRingScreen;->showErrorDismissDialog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap11(Lcom/android/phone/photoring/PhotoRingScreen;ILandroid/content/DialogInterface$OnClickListener;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/phone/photoring/PhotoRingScreen;->showRetryDialog(ILandroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method static synthetic -wrap2(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/android/phone/photoring/PhotoRingScreen;->makeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap3(Lcom/android/phone/photoring/PhotoRingScreen;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/photoring/PhotoRingScreen;->Pick_Video_From_Trim()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/phone/photoring/PhotoRingScreen;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/photoring/PhotoRingScreen;->enableMobileData()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/phone/photoring/PhotoRingScreen;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/photoring/PhotoRingScreen;->englog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/phone/photoring/PhotoRingScreen;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/photoring/PhotoRingScreen;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/phone/photoring/PhotoRingScreen;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/photoring/PhotoRingScreen;->placeCallIncludeMessage()V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/phone/photoring/PhotoRingScreen;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/photoring/PhotoRingScreen;->setImageToView()V

    return-void
.end method

.method static synthetic -wrap9(Lcom/android/phone/photoring/PhotoRingScreen;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/photoring/PhotoRingScreen;->showErrorDialog(Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    const-string/jumbo v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/phone/photoring/PhotoRingScreen;->DBG:Z

    const/16 v0, 0x3a98

    sput v0, Lcom/android/phone/photoring/PhotoRingScreen;->VIDEO_DURATION_LIMIT:I

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "_id"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "date_modified"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "_data"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, "duration"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/phone/photoring/PhotoRingScreen;->THUMBNAIL_PROJECTION_VIDEOS:[Ljava/lang/String;

    const-string/jumbo v0, "content://com.android.contacts/data/phones/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/phone/photoring/PhotoRingScreen;->PHONE_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-object v1, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mPM:Lcom/android/phone/photoring/PhotoRingMgr;

    iput-object v1, p0, Lcom/android/phone/photoring/PhotoRingScreen;->pMe:Landroid/content/Context;

    iput-object v1, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mRecipientsText:Landroid/widget/AutoCompleteTextView;

    iput-object v1, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mNumberText:Landroid/widget/AutoCompleteTextView;

    iput-object v1, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mNameView:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mPhotoringContentsText:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mVideoErrIcon:Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mContactImageButton:Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mBTN_MessageList:Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mBTN_Send:Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mBTN_MediaEdit:Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mProgress:Landroid/app/ProgressDialog;

    iput-object v1, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mResizingdialog:Landroid/app/ProgressDialog;

    iput-object v1, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mPreparedMediaButton:Landroid/widget/ImageView;

    iput-boolean v0, p0, Lcom/android/phone/photoring/PhotoRingScreen;->needDownContent:Z

    iput-boolean v0, p0, Lcom/android/phone/photoring/PhotoRingScreen;->bEmptyNumErr:Z

    iput-boolean v0, p0, Lcom/android/phone/photoring/PhotoRingScreen;->bShowOnly:Z

    iput-boolean v2, p0, Lcom/android/phone/photoring/PhotoRingScreen;->bMobileOffPopup:Z

    iput-boolean v2, p0, Lcom/android/phone/photoring/PhotoRingScreen;->bMobileOnPopup:Z

    iput-boolean v0, p0, Lcom/android/phone/photoring/PhotoRingScreen;->bisExcuted:Z

    iput-boolean v0, p0, Lcom/android/phone/photoring/PhotoRingScreen;->bUnregierShowme:Z

    iput-boolean v0, p0, Lcom/android/phone/photoring/PhotoRingScreen;->isAgif:Z

    iput-object v1, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mNumber:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/phone/photoring/PhotoRingScreen;->iMM:Landroid/view/inputmethod/InputMethodManager;

    iput-boolean v0, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mNumberTextIsContactsName:Z

    iput-object v1, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mFilePath:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/phone/photoring/PhotoRingScreen;->prevFilePath:Ljava/lang/String;

    iput v0, p0, Lcom/android/phone/photoring/PhotoRingScreen;->CONTENT_NONE:I

    iput v2, p0, Lcom/android/phone/photoring/PhotoRingScreen;->CONTENT_IMAGE:I

    iput v3, p0, Lcom/android/phone/photoring/PhotoRingScreen;->CONTENT_VIDEO:I

    iput v0, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mContentType:I

    iput v0, p0, Lcom/android/phone/photoring/PhotoRingScreen;->CONTENT_FROM_GALLERY:I

    iput v3, p0, Lcom/android/phone/photoring/PhotoRingScreen;->CONTENT_FROM_MO_LOG:I

    iput v0, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mContentFrom:I

    iput-boolean v0, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mIsOverLength:Z

    iput-boolean v0, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mHasphotoringToDial:Z

    iput v0, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mThumbHeight:I

    new-instance v0, Lcom/android/phone/photoring/PhotoRingScreen$MobileDataBroadcastReceiver;

    invoke-direct {v0, p0}, Lcom/android/phone/photoring/PhotoRingScreen$MobileDataBroadcastReceiver;-><init>(Lcom/android/phone/photoring/PhotoRingScreen;)V

    iput-object v0, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {}, Lcom/samsung/android/sdk/bixby/BixbyApi;->getInstance()Lcom/samsung/android/sdk/bixby/BixbyApi;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    new-instance v0, Lcom/android/phone/photoring/PhotoRingScreen$1;

    invoke-direct {v0, p0}, Lcom/android/phone/photoring/PhotoRingScreen$1;-><init>(Lcom/android/phone/photoring/PhotoRingScreen;)V

    iput-object v0, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/phone/photoring/PhotoRingScreen$2;

    invoke-direct {v0, p0}, Lcom/android/phone/photoring/PhotoRingScreen$2;-><init>(Lcom/android/phone/photoring/PhotoRingScreen;)V

    iput-object v0, p0, Lcom/android/phone/photoring/PhotoRingScreen;->clickListenerToUpload:Landroid/content/DialogInterface$OnClickListener;

    new-instance v0, Lcom/android/phone/photoring/PhotoRingScreen$3;

    invoke-direct {v0, p0}, Lcom/android/phone/photoring/PhotoRingScreen$3;-><init>(Lcom/android/phone/photoring/PhotoRingScreen;)V

    iput-object v0, p0, Lcom/android/phone/photoring/PhotoRingScreen;->clickListenerToFinish:Landroid/content/DialogInterface$OnClickListener;

    new-instance v0, Lcom/android/phone/photoring/PhotoRingScreen$4;

    invoke-direct {v0, p0}, Lcom/android/phone/photoring/PhotoRingScreen$4;-><init>(Lcom/android/phone/photoring/PhotoRingScreen;)V

    iput-object v0, p0, Lcom/android/phone/photoring/PhotoRingScreen;->cancellistener:Landroid/content/DialogInterface$OnCancelListener;

    new-instance v0, Lcom/android/phone/photoring/PhotoRingScreen$5;

    invoke-direct {v0, p0}, Lcom/android/phone/photoring/PhotoRingScreen$5;-><init>(Lcom/android/phone/photoring/PhotoRingScreen;)V

    iput-object v0, p0, Lcom/android/phone/photoring/PhotoRingScreen;->clickListenerToDismiss:Landroid/content/DialogInterface$OnClickListener;

    new-instance v0, Lcom/android/phone/photoring/PhotoRingScreen$6;

    invoke-direct {v0, p0}, Lcom/android/phone/photoring/PhotoRingScreen$6;-><init>(Lcom/android/phone/photoring/PhotoRingScreen;)V

    iput-object v0, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mCallMessageNetworkListener:Lcom/android/phone/photoring/ICallMessageNetworkListener;

    iput-object v1, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mMenuDialog:Landroid/app/AlertDialog;

    return-void
.end method

.method private Pick_Video_From_Trim()V
    .locals 12

    sget-object v1, Lcom/android/phone/photoring/PhotoRingScreen;->mUriVideos:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v2, "PhotoRingScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mUriVideos : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v1, Lcom/android/phone/photoring/PhotoRingScreen;->DBG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/phone/photoring/PhotoRingScreen;->mUriVideos:Landroid/net/Uri;

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "PhotoRingScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "filePath : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v1, Lcom/android/phone/photoring/PhotoRingScreen;->DBG:Z

    if-eqz v1, :cond_1

    move-object v1, v8

    :goto_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/phone/photoring/PhotoRingScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-nez v0, :cond_2

    const-string/jumbo v1, "PhotoRingScreen"

    const-string/jumbo v2, "ContentResolver is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string/jumbo v1, "..."

    goto :goto_0

    :cond_1
    const-string/jumbo v1, "..."

    goto :goto_1

    :cond_2
    const-wide/16 v10, -0x1

    :try_start_0
    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "_data =\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    :cond_3
    if-eqz v6, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    :goto_2
    const-string/jumbo v1, "PhotoRingScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "videoId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v2, -0x1

    cmp-long v1, v10, v2

    if-eqz v1, :cond_5

    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, v10, v11}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    sput-object v1, Lcom/android/phone/photoring/PhotoRingScreen;->mUriVideos:Landroid/net/Uri;

    :cond_5
    const-string/jumbo v2, "PhotoRingScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mUriVideos : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v1, Lcom/android/phone/photoring/PhotoRingScreen;->DBG:Z

    if-eqz v1, :cond_6

    sget-object v1, Lcom/android/phone/photoring/PhotoRingScreen;->mUriVideos:Landroid/net/Uri;

    :goto_3
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x2

    iput v1, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mContentType:I

    sget-object v1, Lcom/android/phone/photoring/PhotoRingScreen;->mUriVideos:Landroid/net/Uri;

    invoke-static {p0, v1}, Lcom/android/phone/photoring/PhotoringUtil;->getVideoFilePathFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/photoring/PhotoRingScreen;->uploadPath:Ljava/lang/String;

    sget-object v1, Lcom/android/phone/photoring/PhotoRingScreen;->mUriVideos:Landroid/net/Uri;

    const-string/jumbo v2, "photoring_data.png"

    invoke-static {p0, v1, v2}, Lcom/android/phone/photoring/PhotoringUtil;->setVideo(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-lez v1, :cond_7

    invoke-direct {p0}, Lcom/android/phone/photoring/PhotoRingScreen;->setImageToView()V

    :goto_4
    invoke-direct {p0}, Lcom/android/phone/photoring/PhotoRingScreen;->resetContentFrom()V

    return-void

    :catch_0
    move-exception v7

    const-string/jumbo v1, "PhotoRingScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Exception is  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_6
    const-string/jumbo v1, "..."

    goto :goto_3

    :cond_7
    iget-object v1, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mPhotoringContentsText:Landroid/widget/TextView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mVideoErrIcon:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/phone/photoring/PhotoRingScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020038

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v9

    const-string/jumbo v1, "photoring_data_thumb.png"

    invoke-static {p0, v9, v1}, Lcom/android/phone/photoring/PhotoringUtil;->saveBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    goto :goto_4
.end method

.method private checkMobileData()Z
    .locals 14

    const v13, 0x7f0d097a

    const v12, 0x7f040099

    const/16 v11, 0x8

    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/android/phone/photoring/PhotoRingScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "mobile_data"

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eq v7, v9, :cond_4

    invoke-virtual {p0}, Lcom/android/phone/photoring/PhotoRingScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "key_photoring_enable_mobile_data_show"

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v9, :cond_3

    iget-boolean v7, p0, Lcom/android/phone/photoring/PhotoRingScreen;->bMobileOffPopup:Z

    if-eqz v7, :cond_3

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const/4 v7, 0x0

    invoke-virtual {v3, v12, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v7, 0x7f1001d1

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v7, 0x7f1001d2

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/CheckBox;

    iput-object v7, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mCB:Landroid/widget/CheckBox;

    const v7, 0x7f100136

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const-string/jumbo v7, "feature_lgt"

    invoke-static {v7}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    const v7, 0x7f0d097b

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    const v7, 0x7f1001d0

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5, v11}, Landroid/widget/TextView;->setVisibility(I)V

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    new-instance v7, Lcom/android/phone/photoring/PhotoRingScreen$7;

    invoke-direct {v7, p0}, Lcom/android/phone/photoring/PhotoRingScreen$7;-><init>(Lcom/android/phone/photoring/PhotoRingScreen;)V

    const v8, 0x7f0d07c4

    invoke-virtual {v1, v8, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v7, Lcom/android/phone/photoring/PhotoRingScreen$8;

    invoke-direct {v7, p0}, Lcom/android/phone/photoring/PhotoRingScreen$8;-><init>(Lcom/android/phone/photoring/PhotoRingScreen;)V

    const v8, 0x7f0d0327

    invoke-virtual {v1, v8, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v7, Lcom/android/phone/photoring/PhotoRingScreen$9;

    invoke-direct {v7, p0}, Lcom/android/phone/photoring/PhotoRingScreen$9;-><init>(Lcom/android/phone/photoring/PhotoRingScreen;)V

    invoke-virtual {v1, v7}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/AlertDialog;->show()V

    iput-boolean v10, p0, Lcom/android/phone/photoring/PhotoRingScreen;->bMobileOffPopup:Z

    const/4 v4, 0x0

    :cond_0
    :goto_1
    return v4

    :cond_1
    const-string/jumbo v7, "feature_ktt"

    invoke-static {v7}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    const v7, 0x7f0d0a6e

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_2
    const v7, 0x7f0d097b

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/android/phone/photoring/PhotoRingScreen;->enableMobileData()V

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/android/phone/photoring/PhotoRingScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "key_photoring_mobile_data_show"

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v9, :cond_0

    iget-boolean v7, p0, Lcom/android/phone/photoring/PhotoRingScreen;->bMobileOnPopup:Z

    if-eqz v7, :cond_0

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const/4 v7, 0x0

    invoke-virtual {v3, v12, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v7, 0x7f1001d1

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v7, 0x7f1001d2

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/CheckBox;

    iput-object v7, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mCB:Landroid/widget/CheckBox;

    const v7, 0x7f100136

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const-string/jumbo v7, "feature_lgt"

    invoke-static {v7}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-virtual {v6, v13}, Landroid/widget/TextView;->setText(I)V

    :goto_2
    const v7, 0x7f1001d0

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5, v11}, Landroid/widget/TextView;->setVisibility(I)V

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    new-instance v7, Lcom/android/phone/photoring/PhotoRingScreen$10;

    invoke-direct {v7, p0}, Lcom/android/phone/photoring/PhotoRingScreen$10;-><init>(Lcom/android/phone/photoring/PhotoRingScreen;)V

    const v8, 0x7f0d032a

    invoke-virtual {v1, v8, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v7, Lcom/android/phone/photoring/PhotoRingScreen$11;

    invoke-direct {v7, p0}, Lcom/android/phone/photoring/PhotoRingScreen$11;-><init>(Lcom/android/phone/photoring/PhotoRingScreen;)V

    invoke-virtual {v1, v7}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/AlertDialog;->show()V

    iput-boolean v10, p0, Lcom/android/phone/photoring/PhotoRingScreen;->bMobileOnPopup:Z

    const/4 v4, 0x0

    goto/16 :goto_1

    :cond_5
    const-string/jumbo v7, "feature_ktt"

    invoke-static {v7}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    const v7, 0x7f0d0a6d

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    :cond_6
    invoke-virtual {v6, v13}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2
.end method

.method private dismissMenuDialog()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mMenuDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "dismissMenuDialog"

    invoke-direct {p0, v0}, Lcom/android/phone/photoring/PhotoRingScreen;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mMenuDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mMenuDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    iput-object v1, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mMenuDialog:Landroid/app/AlertDialog;

    :cond_0
    return-void
.end method

.method private editMenuSelected(I)V
    .locals 7

    const/4 v6, 0x1

    const/4 v1, 0x0

    if-ne p1, v6, :cond_2

    invoke-static {}, Lcom/android/phone/photoring/PhotoringUtil;->getImageIntentFromGallery()Landroid/content/Intent;

    move-result-object v1

    :cond_0
    :goto_0
    iget-boolean v4, p0, Lcom/android/phone/photoring/PhotoRingScreen;->bisExcuted:Z

    if-nez v4, :cond_1

    iput-boolean v6, p0, Lcom/android/phone/photoring/PhotoRingScreen;->bisExcuted:Z

    if-eqz v1, :cond_1

    :try_start_0
    invoke-virtual {p0, v1, p1}, Lcom/android/phone/photoring/PhotoRingScreen;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/android/phone/photoring/PhotoRingScreen;->dismissMenuDialog()V

    return-void

    :cond_2
    const/4 v4, 0x2

    if-ne p1, v4, :cond_3

    invoke-static {}, Lcom/android/phone/photoring/PhotoringUtil;->getNewCaptureImageFile()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/android/phone/photoring/PhotoRingScreen;->mCaptureFile:Ljava/lang/String;

    sget-object v4, Lcom/android/phone/photoring/PhotoRingScreen;->mCaptureFile:Ljava/lang/String;

    invoke-static {p0, v4}, Lcom/android/phone/photoring/PhotoringUtil;->getUriFromFile(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/photoring/PhotoringUtil;->getImageIntentFromCamera(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v1

    goto :goto_0

    :cond_3
    const/4 v4, 0x4

    if-ne p1, v4, :cond_4

    invoke-static {}, Lcom/android/phone/photoring/PhotoringUtil;->getVideoIntentFromGallery()Landroid/content/Intent;

    move-result-object v1

    goto :goto_0

    :cond_4
    const/4 v4, 0x5

    if-ne p1, v4, :cond_0

    invoke-static {}, Lcom/android/phone/photoring/PhotoringUtil;->getVideoIntentFromCamera()Landroid/content/Intent;

    move-result-object v1

    invoke-static {}, Lcom/android/phone/photoring/PhotoringUtil;->checkRemainingSize()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-gtz v4, :cond_0

    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v4, "PhotoRingScreen"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "No activity found for intent: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private enableMobileData()V
    .locals 7

    const/4 v4, 0x1

    const/4 v6, 0x0

    const-string/jumbo v3, "connectivity"

    invoke-virtual {p0, v3}, Lcom/android/phone/photoring/PhotoRingScreen;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    invoke-virtual {v1, v4}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.ACTION_DATA_SELECTION_POPUP_PRESSED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "DataEnable"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v3, "Roaming"

    invoke-virtual {v2, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v2}, Lcom/android/phone/photoring/PhotoRingScreen;->sendBroadcast(Landroid/content/Intent;)V

    const/16 v3, 0x2006

    invoke-static {p0, v3}, Lcom/android/phone/photoring/PhotoringUtil;->showToast(Landroid/content/Context;I)V

    const-string/jumbo v3, "feature_lgt"

    invoke-static {v3}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v3, "true"

    const-string/jumbo v4, "persist.sys.restrict_background"

    const-string/jumbo v5, "false"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v3, "kr.co.uplus.RESTRICT_BACKGROUND"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "ENABLED"

    invoke-virtual {v0, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/phone/photoring/PhotoRingScreen;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method private englog(Ljava/lang/String;)V
    .locals 2

    const-string/jumbo v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "PhotoRingScreen"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private initPhotoRingScreen()V
    .locals 6

    const/4 v5, 0x0

    const v1, 0x7f04009e

    invoke-virtual {p0, v1}, Lcom/android/phone/photoring/PhotoRingScreen;->setContentView(I)V

    const v1, 0x7f1001f4

    invoke-virtual {p0, v1}, Lcom/android/phone/photoring/PhotoRingScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mPhotoringContentsText:Landroid/widget/TextView;

    const v1, 0x7f1001f3

    invoke-virtual {p0, v1}, Lcom/android/phone/photoring/PhotoRingScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mVideoErrIcon:Landroid/widget/ImageView;

    const v1, 0x7f1001f2

    invoke-virtual {p0, v1}, Lcom/android/phone/photoring/PhotoRingScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mPreparedMediaButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mPreparedMediaButton:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mPreparedMediaButton:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mPreparedMediaButton:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Lcom/android/phone/photoring/PhotoRingScreen;->registerForContextMenu(Landroid/view/View;)V

    new-instance v1, Lcom/android/phone/photoring/GifUtil;

    iget-object v2, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mPreparedMediaButton:Landroid/widget/ImageView;

    invoke-direct {v1, v2}, Lcom/android/phone/photoring/GifUtil;-><init>(Landroid/widget/ImageView;)V

    iput-object v1, p0, Lcom/android/phone/photoring/PhotoRingScreen;->gUtil:Lcom/android/phone/photoring/GifUtil;

    :cond_0
    const v1, 0x7f1001f1

    invoke-virtual {p0, v1}, Lcom/android/phone/photoring/PhotoRingScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/AutoCompleteTextView;

    iput-object v1, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mRecipientsText:Landroid/widget/AutoCompleteTextView;

    iget-object v1, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mRecipientsText:Landroid/widget/AutoCompleteTextView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mRecipientsText:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView;->requestFocus()Z

    :cond_1
    const v1, 0x7f1001de

    invoke-virtual {p0, v1}, Lcom/android/phone/photoring/PhotoRingScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mByteCnt:Landroid/widget/TextView;

    const v1, 0x7f1001ef

    invoke-virtual {p0, v1}, Lcom/android/phone/photoring/PhotoRingScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/AutoCompleteTextView;

    iput-object v1, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mNumberText:Landroid/widget/AutoCompleteTextView;

    iget-object v1, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mNumberText:Landroid/widget/AutoCompleteTextView;

    new-instance v2, Lcom/android/phone/photoring/PhotoRingScreen$15;

    invoke-direct {v2, p0}, Lcom/android/phone/photoring/PhotoRingScreen$15;-><init>(Lcom/android/phone/photoring/PhotoRingScreen;)V

    invoke-virtual {v1, v2}, Landroid/widget/AutoCompleteTextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    iget-object v1, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mNumberText:Landroid/widget/AutoCompleteTextView;

    new-instance v2, Lcom/android/phone/photoring/PhotoRingScreen$16;

    invoke-direct {v2, p0}, Lcom/android/phone/photoring/PhotoRingScreen$16;-><init>(Lcom/android/phone/photoring/PhotoRingScreen;)V

    invoke-virtual {v1, v2}, Landroid/widget/AutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v1, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mNumberText:Landroid/widget/AutoCompleteTextView;

    new-instance v2, Lcom/android/phone/photoring/PhotoRingScreen$17;

    invoke-direct {v2, p0}, Lcom/android/phone/photoring/PhotoRingScreen$17;-><init>(Lcom/android/phone/photoring/PhotoRingScreen;)V

    invoke-virtual {v1, v2}, Landroid/widget/AutoCompleteTextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    const-string/jumbo v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/android/phone/photoring/PhotoRingScreen;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    iput-object v1, p0, Lcom/android/phone/photoring/PhotoRingScreen;->iMM:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mRecipientsText:Landroid/widget/AutoCompleteTextView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mRecipientsText:Landroid/widget/AutoCompleteTextView;

    new-instance v2, Lcom/android/phone/photoring/PhotoringUtil$PhraseTextWatcher;

    iget-object v3, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mRecipientsText:Landroid/widget/AutoCompleteTextView;

    iget-object v4, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mByteCnt:Landroid/widget/TextView;

    invoke-direct {v2, p0, v3, v4}, Lcom/android/phone/photoring/PhotoringUtil$PhraseTextWatcher;-><init>(Landroid/content/Context;Landroid/widget/EditText;Landroid/widget/TextView;)V

    invoke-virtual {v1, v2}, Landroid/widget/AutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v1, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mRecipientsText:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v1, v5}, Landroid/widget/AutoCompleteTextView;->setThreshold(I)V

    const/4 v1, 0x1

    new-array v0, v1, [Landroid/text/InputFilter;

    new-instance v1, Lcom/android/phone/photoring/PhotoringUtil$CharacterFilter;

    invoke-direct {v1, p0}, Lcom/android/phone/photoring/PhotoringUtil$CharacterFilter;-><init>(Landroid/content/Context;)V

    aput-object v1, v0, v5

    iget-object v1, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mRecipientsText:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v1, v0}, Landroid/widget/AutoCompleteTextView;->setFilters([Landroid/text/InputFilter;)V

    iget-object v1, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mRecipientsText:Landroid/widget/AutoCompleteTextView;

    const-string/jumbo v2, "disableEmoticonInput=true"

    invoke-virtual {v1, v2}, Landroid/widget/AutoCompleteTextView;->setPrivateImeOptions(Ljava/lang/String;)V

    :cond_2
    const v1, 0x7f1001f0

    invoke-virtual {p0, v1}, Lcom/android/phone/photoring/PhotoRingScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mContactImageButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mContactImageButton:Landroid/widget/ImageButton;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mContactImageButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    const v1, 0x7f1001f6

    invoke-virtual {p0, v1}, Lcom/android/phone/photoring/PhotoRingScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mBTN_MessageList:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mBTN_MessageList:Landroid/widget/Button;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mBTN_MessageList:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    const v1, 0x7f1001f8

    invoke-virtual {p0, v1}, Lcom/android/phone/photoring/PhotoRingScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mBTN_Send:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mBTN_Send:Landroid/widget/Button;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mBTN_Send:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget v1, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mContentFrom:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_5

    iget v1, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mContentFrom:I

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mBTN_Send:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_5
    const v1, 0x7f1001f7

    invoke-virtual {p0, v1}, Lcom/android/phone/photoring/PhotoRingScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mBTN_MediaEdit:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mBTN_MediaEdit:Landroid/widget/Button;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mBTN_MediaEdit:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_6
    iget-object v1, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mPhotoringContentsText:Landroid/widget/TextView;

    if-eqz v1, :cond_7

    const-string/jumbo v1, "feature_ktt"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mPhotoringContentsText:Landroid/widget/TextView;

    const v2, 0x7f0d0a68

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    :cond_7
    invoke-virtual {p0}, Lcom/android/phone/photoring/PhotoRingScreen;->loadPhotoNameInfo()V

    invoke-virtual {p0}, Lcom/android/phone/photoring/PhotoRingScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0119

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mThumbHeight:I

    return-void
.end method

.method private isValidNumber(Ljava/lang/CharSequence;)Z
    .locals 3

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v2, 0x30

    if-lt v1, v2, :cond_0

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v2, 0x39

    if-le v1, v2, :cond_1

    :cond_0
    const/4 v1, 0x0

    return v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    return v1
.end method

.method private log(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "PhotoRingScreen"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static makeNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    move-object v0, p0

    if-eqz p0, :cond_0

    const-string/jumbo v1, "-"

    const-string/jumbo v2, ""

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "\\("

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "\\)"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "\\p{Space}"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    const-string/jumbo v1, ""

    return-object v1
.end method

.method private placeCallIncludeMessage()V
    .locals 11

    const/4 v10, 0x0

    const/4 v9, 0x0

    iget-object v6, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mRecipientsText:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v6}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-interface {v6}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/phone/photoring/PhotoringUtil;->convertCharacter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mNumber:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/phone/photoring/PhotoRingScreen;->makeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v7, "PhotoRingScreen"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "placeCallIncludeMessage.."

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-boolean v6, Lcom/android/phone/photoring/PhotoRingScreen;->DBG:Z

    if-eqz v6, :cond_2

    move-object v6, v5

    :goto_0
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_5

    invoke-direct {p0}, Lcom/android/phone/photoring/PhotoRingScreen;->saveToHistory()V

    iget-object v6, p0, Lcom/android/phone/photoring/PhotoRingScreen;->contentUrl:Ljava/lang/String;

    if-eqz v6, :cond_3

    iget v6, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mContentType:I

    if-eqz v6, :cond_3

    invoke-virtual {p0}, Lcom/android/phone/photoring/PhotoRingScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "key_photoring_mt_content_url"

    iget-object v8, p0, Lcom/android/phone/photoring/PhotoRingScreen;->contentUrl:Ljava/lang/String;

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :goto_1
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v6, "android.intent.action.CALL_PRIVILEGED"

    const-string/jumbo v7, "tel"

    invoke-static {v7, v5, v9}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v3, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v6, 0x10000000

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    const-string/jumbo v6, "ims_support_photo_ring"

    invoke-static {v6}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string/jumbo v6, "callmessage"

    const-string/jumbo v7, "<PhotoRing>"

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    :goto_2
    :try_start_0
    invoke-virtual {p0, v3}, Lcom/android/phone/photoring/PhotoRingScreen;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    const-string/jumbo v6, "input_method"

    invoke-virtual {p0, v6}, Lcom/android/phone/photoring/PhotoRingScreen;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodManager;->isActive()Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mRecipientsText:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v6}, Landroid/widget/AutoCompleteTextView;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v6

    invoke-virtual {v2, v6, v10}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v6, "clear"

    const/4 v7, 0x1

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v3, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const/4 v6, -0x1

    invoke-virtual {p0, v6, v3}, Lcom/android/phone/photoring/PhotoRingScreen;->setResult(ILandroid/content/Intent;)V

    iget-object v6, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mHandler:Landroid/os/Handler;

    const-wide/16 v8, 0x7d0

    const/4 v7, 0x2

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    :cond_2
    const-string/jumbo v6, ""

    goto/16 :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/android/phone/photoring/PhotoRingScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "key_photoring_mt_content_url"

    invoke-static {v6, v7, v9}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_1

    :cond_4
    const-string/jumbo v6, "callmessage"

    invoke-virtual {v3, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    :catch_0
    move-exception v1

    const-string/jumbo v6, "PhotoRingScreen"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "No activity found for intent : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_3

    :cond_5
    const-string/jumbo v6, "PhotoRingScreen"

    const-string/jumbo v7, "warning : number is empty"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method private resetContentFrom()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mContentFrom:I

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mBTN_Send:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method private resizeVideo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/samsung/android/media/codec/SemVideoTranscoder;

    invoke-direct {v0}, Lcom/samsung/android/media/codec/SemVideoTranscoder;-><init>()V

    iput-object v0, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mVideoTranscoder:Lcom/samsung/android/media/codec/SemVideoTranscoder;

    const/4 v7, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mVideoTranscoder:Lcom/samsung/android/media/codec/SemVideoTranscoder;

    const/16 v1, 0x280

    const/16 v2, 0x1e0

    invoke-virtual {v0, p2, v1, v2, p1}, Lcom/samsung/android/media/codec/SemVideoTranscoder;->initialize(Ljava/lang/String;IILjava/lang/String;)V

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mVideoTranscoder:Lcom/samsung/android/media/codec/SemVideoTranscoder;

    const/16 v1, 0x7cf

    invoke-virtual {v0, v1}, Lcom/samsung/android/media/codec/SemVideoTranscoder;->setMaxOutputSize(I)V

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mVideoTranscoder:Lcom/samsung/android/media/codec/SemVideoTranscoder;

    const/4 v1, 0x4

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/media/codec/SemVideoTranscoder;->setEncodingCodecs(II)V

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mVideoTranscoder:Lcom/samsung/android/media/codec/SemVideoTranscoder;

    invoke-virtual {v0}, Lcom/samsung/android/media/codec/SemVideoTranscoder;->getOutputFileSize()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    const/4 v0, -0x1

    if-ne v7, v0, :cond_0

    return-void

    :catch_0
    move-exception v6

    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    const-string/jumbo v0, "PhotoRingScreen"

    const-string/jumbo v1, "resizingVideo IOException"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mResizingdialog:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mResizingdialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mResizingdialog:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/android/phone/photoring/PhotoRingScreen$18;

    invoke-direct {v1, p0}, Lcom/android/phone/photoring/PhotoRingScreen$18;-><init>(Lcom/android/phone/photoring/PhotoRingScreen;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mResizingdialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mResizingdialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v7}, Landroid/app/ProgressDialog;->setMax(I)V

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mResizingdialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mResizingdialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mResizingdialog:Landroid/app/ProgressDialog;

    const-string/jumbo v1, "0/1"

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressNumberFormat(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mResizingdialog:Landroid/app/ProgressDialog;

    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressPercentFormat(Ljava/text/NumberFormat;)V

    new-instance v0, Lcom/android/phone/photoring/PhotoRingScreen$ResizeProgress;

    invoke-direct {v0, p0, p2, v7, v5}, Lcom/android/phone/photoring/PhotoRingScreen$ResizeProgress;-><init>(Lcom/android/phone/photoring/PhotoRingScreen;Ljava/lang/String;ILcom/android/phone/photoring/PhotoRingScreen$ResizeProgress;)V

    iput-object v0, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mResizeProgress:Lcom/android/phone/photoring/PhotoRingScreen$ResizeProgress;

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mResizeProgress:Lcom/android/phone/photoring/PhotoRingScreen$ResizeProgress;

    new-array v1, v3, [Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lcom/android/phone/photoring/PhotoRingScreen$ResizeProgress;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    new-instance v0, Lcom/android/phone/photoring/PhotoRingScreen$ResizeThread;

    iget-object v2, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mVideoTranscoder:Lcom/samsung/android/media/codec/SemVideoTranscoder;

    iget-object v3, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mResizeProgress:Lcom/android/phone/photoring/PhotoRingScreen$ResizeProgress;

    iget-object v4, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mHandler:Landroid/os/Handler;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/phone/photoring/PhotoRingScreen$ResizeThread;-><init>(Lcom/android/phone/photoring/PhotoRingScreen;Lcom/samsung/android/media/codec/SemVideoTranscoder;Lcom/android/phone/photoring/PhotoRingScreen$ResizeProgress;Landroid/os/Handler;Lcom/android/phone/photoring/PhotoRingScreen$ResizeThread;)V

    iput-object v0, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mNewResize:Lcom/android/phone/photoring/PhotoRingScreen$ResizeThread;

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mNewResize:Lcom/android/phone/photoring/PhotoRingScreen$ResizeThread;

    invoke-virtual {v0}, Lcom/android/phone/photoring/PhotoRingScreen$ResizeThread;->start()V

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mResizingdialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    return-void
.end method

.method private saveToHistory()V
    .locals 23

    const/16 v19, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/phone/photoring/PhotoRingScreen;->mContentType:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3

    const/4 v4, 0x1

    invoke-static {v4}, Lcom/android/phone/photoring/PhotoringUtil;->getNewFileName(Z)Ljava/lang/String;

    move-result-object v20

    invoke-static {}, Lcom/android/phone/photoring/PhotoringUtil;->getMCIDDir()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "photoring_data.png"

    move-object/from16 v0, v20

    invoke-static {v4, v5, v0}, Lcom/android/phone/photoring/PhotoringUtil;->renameFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-static {}, Lcom/android/phone/photoring/PhotoringUtil;->getMCIDDir()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "photoring_data_thumb.png"

    const-string/jumbo v6, ".png"

    const-string/jumbo v7, "thumb.png"

    move-object/from16 v0, v20

    invoke-virtual {v0, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/android/phone/photoring/PhotoringUtil;->renameFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/photoring/PhotoRingScreen;->mRecipientsText:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v4}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v15

    new-instance v18, Lcom/android/phone/photoring/PhotoRingDB;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/phone/photoring/PhotoRingDB;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Lcom/android/phone/photoring/PhotoRingDB;->getPhrasesByType(I)Landroid/database/Cursor;

    move-result-object v11

    if-eqz v11, :cond_1

    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v4

    const/16 v5, 0xa

    if-ne v4, v5, :cond_1

    invoke-interface {v11}, Landroid/database/Cursor;->moveToLast()Z

    const/4 v4, 0x0

    invoke-interface {v11, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    const/4 v4, 0x2

    invoke-interface {v11, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Lcom/android/phone/photoring/PhotoRingDB;->deletePhrase(Ljava/lang/String;)I

    invoke-static {v12}, Lcom/android/phone/photoring/PhotoringUtil;->isImagePath(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object/from16 v0, v18

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2, v12}, Lcom/android/phone/photoring/PhotoRingDB;->CheckPathReferencedOther(JLjava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object/from16 v0, p0

    invoke-static {v0, v12}, Lcom/android/phone/photoring/PhotoringUtil;->DeletePhotoringImage(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v4, 0x3

    invoke-interface {v11, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-static {v0, v12}, Lcom/android/phone/photoring/PhotoringUtil;->DeletePhotoringImage(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1
    const/4 v4, 0x1

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v21

    invoke-virtual {v0, v15, v1, v2, v4}, Lcom/android/phone/photoring/PhotoRingDB;->insertPhrase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    if-eqz v11, :cond_2

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_2
    invoke-virtual/range {v18 .. v18}, Lcom/android/phone/photoring/PhotoRingDB;->close()V

    return-void

    :cond_3
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/phone/photoring/PhotoRingScreen;->mContentType:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    const/4 v4, 0x0

    invoke-static {v4}, Lcom/android/phone/photoring/PhotoringUtil;->getNewFileName(Z)Ljava/lang/String;

    move-result-object v20

    sget-object v4, Lcom/android/phone/photoring/PhotoRingScreen;->mUriVideos:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "file://"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    sget-object v4, Lcom/android/phone/photoring/PhotoRingScreen;->mUriVideos:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "photoring_data.mp4"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {}, Lcom/android/phone/photoring/PhotoringUtil;->getMCIDDir()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "photoring_data.mp4"

    move-object/from16 v0, v20

    invoke-static {v4, v5, v0}, Lcom/android/phone/photoring/PhotoringUtil;->renameFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    :cond_4
    :goto_1
    invoke-static {}, Lcom/android/phone/photoring/PhotoringUtil;->getMCIDDir()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "photoring_data_thumb.png"

    const-string/jumbo v6, ".mp4"

    const-string/jumbo v7, "thumb.png"

    move-object/from16 v0, v20

    invoke-virtual {v0, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/android/phone/photoring/PhotoringUtil;->renameFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    goto/16 :goto_0

    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/photoring/PhotoRingScreen;->uploadPath:Ljava/lang/String;

    const-string/jumbo v5, "photoring_temp.mp4"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/photoring/PhotoRingScreen;->uploadPath:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/phone/photoring/PhotoRingScreen;->uploadPath:Ljava/lang/String;

    const/16 v6, 0x2f

    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {v4, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v4, "photoring_temp.mp4"

    move-object/from16 v0, v20

    invoke-static {v14, v4, v0}, Lcom/android/phone/photoring/PhotoringUtil;->renameFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    const-string/jumbo v10, ""

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/photoring/PhotoRingScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "_data =\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/phone/photoring/PhotoRingScreen;->uploadPath:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    if-eqz v11, :cond_7

    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_6

    const-string/jumbo v4, "_id"

    invoke-interface {v11, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v11, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    :cond_6
    invoke-interface {v11}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_7
    :goto_2
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_8

    new-instance v22, Landroid/content/ContentValues;

    invoke-direct/range {v22 .. v22}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v4, "_data"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "_display_name"

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "title"

    const-string/jumbo v5, ".mp4"

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/photoring/PhotoRingScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "_id = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v4, v5, v0, v6, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_8
    sget-object v4, Lcom/android/phone/photoring/PhotoRingScreen;->mUriVideos:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "photoring_temp.mp4"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    sget-object v4, Lcom/android/phone/photoring/PhotoRingScreen;->mUriVideos:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v19

    goto/16 :goto_1

    :catch_0
    move-exception v13

    const-string/jumbo v4, "PhotoRingScreen"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Exception is  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_9
    sget-object v4, Lcom/android/phone/photoring/PhotoRingScreen;->mUriVideos:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v19

    goto/16 :goto_1
.end method

.method private setImageToView()V
    .locals 5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/phone/photoring/PhotoringUtil;->getMCIDDir()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "photoring_data.png"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget v2, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mThumbHeight:I

    iget v3, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mThumbHeight:I

    const/4 v4, 0x1

    invoke-static {v0, v2, v3, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    const-string/jumbo v2, "photoring_data_thumb.png"

    invoke-static {p0, v1, v2}, Lcom/android/phone/photoring/PhotoringUtil;->saveBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mPhotoringContentsText:Landroid/widget/TextView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mVideoErrIcon:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mPreparedMediaButton:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mPreparedMediaButton:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private setPreviewInit()V
    .locals 4

    const/16 v3, 0x8

    const/4 v2, 0x0

    const/4 v1, 0x0

    sget-object v0, Lcom/android/phone/photoring/PhotoRingScreen;->mUriVideos:Landroid/net/Uri;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/phone/photoring/PhotoRingScreen;->mUriVideos:Landroid/net/Uri;

    invoke-static {p0, v0}, Lcom/android/phone/photoring/PhotoringUtil;->getVideoFilePathFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/photoring/PhotoRingScreen;->prevFilePath:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoRingScreen;->prevFilePath:Ljava/lang/String;

    if-nez v0, :cond_0

    iput v2, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mContentType:I

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mPreparedMediaButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mPreparedMediaButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mPhotoringContentsText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mVideoErrIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private showEditMenuDialog()V
    .locals 1

    const-string/jumbo v0, "showEditMenuDialog"

    invoke-direct {p0, v0}, Lcom/android/phone/photoring/PhotoRingScreen;->log(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/phone/photoring/PhotoRingScreen;->dismissMenuDialog()V

    invoke-static {p0, p0}, Lcom/android/phone/photoring/PhotoringUtil;->createAttachMenuDialog(Landroid/content/Context;Landroid/view/View$OnClickListener;)Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mMenuDialog:Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mMenuDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private showErrorDialog(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/phone/photoring/PhotoRingScreen;->pMe:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    :goto_0
    iget-object v1, p0, Lcom/android/phone/photoring/PhotoRingScreen;->clickListenerToFinish:Landroid/content/DialogInterface$OnClickListener;

    const v2, 0x7f0d032a

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/phone/photoring/PhotoRingScreen;->cancellistener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    return-void

    :cond_0
    const v1, 0x7f0d097c

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_0
.end method

.method private showErrorDismissDialog(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/phone/photoring/PhotoRingScreen;->pMe:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    :goto_0
    iget-object v1, p0, Lcom/android/phone/photoring/PhotoRingScreen;->clickListenerToDismiss:Landroid/content/DialogInterface$OnClickListener;

    const v2, 0x7f0d032a

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/phone/photoring/PhotoRingScreen;->cancellistener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    return-void

    :cond_0
    const v1, 0x7f0d097c

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_0
.end method

.method private showRetryDialog(ILandroid/content/DialogInterface$OnClickListener;)V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/phone/photoring/PhotoRingScreen;->pMe:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0d032a

    invoke-virtual {v0, v1, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/phone/photoring/PhotoRingScreen;->clickListenerToFinish:Landroid/content/DialogInterface$OnClickListener;

    const v2, 0x7f0d0327

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/phone/photoring/PhotoRingScreen;->cancellistener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->finish()V

    const-string/jumbo v0, "finish"

    invoke-direct {p0, v0}, Lcom/android/phone/photoring/PhotoRingScreen;->log(Ljava/lang/String;)V

    return-void
.end method

.method public getSelection()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "replace(replace(replace(replace("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "data1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ",\"-\",\"\"),\")\",\"\"),\"(\",\"\"), \" \",\"\")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, " LIKE ?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public loadPhotoNameInfo()V
    .locals 11

    const/4 v5, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    const-string/jumbo v0, "loadPhotoNameInfo.."

    invoke-direct {p0, v0}, Lcom/android/phone/photoring/PhotoRingScreen;->englog(Ljava/lang/String;)V

    sget-object v0, Lcom/android/phone/photoring/PhotoRingScreen;->PHONE_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v2, "limit"

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/phone/photoring/PhotoRingScreen;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/android/phone/photoring/PhotoRingScreen$PROJECTION_NUMBER;->projection:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/phone/photoring/PhotoRingScreen;->getSelection()Ljava/lang/String;

    move-result-object v3

    new-array v4, v10, [Ljava/lang/String;

    iget-object v8, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mNumber:Ljava/lang/String;

    invoke-static {v8}, Lcom/android/phone/photoring/PhotoRingScreen;->makeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v9

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    const/4 v7, 0x0

    :goto_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    goto :goto_0

    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    if-eqz v7, :cond_1

    iput-boolean v10, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mNumberTextIsContactsName:Z

    iput-object v7, p0, Lcom/android/phone/photoring/PhotoRingScreen;->contactName:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mNumberText:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0, v7}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mNumberText:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0, v9}, Landroid/widget/AutoCompleteTextView;->setVisibility(I)V

    :goto_1
    return-void

    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mNumberText:Landroid/widget/AutoCompleteTextView;

    iget-object v2, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mNumber:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    iput-object v5, p0, Lcom/android/phone/photoring/PhotoRingScreen;->contactName:Ljava/lang/String;

    goto :goto_1
.end method

.method public loadTabs()V
    .locals 5

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "intent.action.INTERACTION_TOPMENU"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "additional"

    const-string/jumbo v3, "phone"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "existingRecipientCount"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v2, "excludeProfile"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 v2, 0x7

    :try_start_0
    invoke-virtual {p0, v1, v2}, Lcom/android/phone/photoring/PhotoRingScreen;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "PhotoRingScreen"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "No activity found for intent : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 34

    invoke-super/range {p0 .. p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    const-string/jumbo v30, "PhotoRingScreen"

    const-string/jumbo v31, "onActivityResult"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v30, "PhotoRingScreen"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v32, "requestCode = "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string/jumbo v32, ", resultCode = "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v30, 0x0

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/phone/photoring/PhotoRingScreen;->bisExcuted:Z

    const/16 v30, -0x1

    move/from16 v0, p2

    move/from16 v1, v30

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/photoring/PhotoRingScreen;->dismissMenuDialog()V

    packed-switch p1, :pswitch_data_0

    :cond_1
    :goto_0
    return-void

    :pswitch_0
    const-string/jumbo v30, "feature_ktt"

    invoke-static/range {v30 .. v30}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v30

    if-eqz v30, :cond_2

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/phone/photoring/PhotoRingScreen;->bUnregierShowme:Z

    move/from16 v30, v0

    if-eqz v30, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/photoring/PhotoRingScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v30

    const v31, 0x7f0d0a72

    invoke-virtual/range {v30 .. v31}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Lcom/android/phone/photoring/PhotoRingScreen;->showErrorDismissDialog(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/phone/photoring/PhotoringUtil;->getMCIDDir()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string/jumbo v31, "croptemp.png"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Lcom/android/phone/photoring/PhotoringUtil;->getBitmapFromFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v19

    if-nez v19, :cond_3

    const-string/jumbo v30, "PhotoRingScreen"

    const-string/jumbo v31, "Returned image is null"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    const-string/jumbo v30, "photoring_data.png"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v30

    invoke-static {v0, v1, v2}, Lcom/android/phone/photoring/PhotoringUtil;->saveBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/phone/photoring/PhotoringUtil;->getMCIDDir()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string/jumbo v31, "photoring_data.png"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/photoring/PhotoRingScreen;->uploadPath:Ljava/lang/String;

    const/16 v30, 0x1

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/phone/photoring/PhotoRingScreen;->mContentType:I

    invoke-direct/range {p0 .. p0}, Lcom/android/phone/photoring/PhotoRingScreen;->setImageToView()V

    invoke-direct/range {p0 .. p0}, Lcom/android/phone/photoring/PhotoRingScreen;->resetContentFrom()V

    goto/16 :goto_0

    :pswitch_1
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v30

    sput-object v30, Lcom/android/phone/photoring/PhotoRingScreen;->mUriCamera:Landroid/net/Uri;

    const-string/jumbo v31, "PhotoRingScreen"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v32, "mUriCamera by MCIDConstants.REQUEST_IMAGE_FROM_GALLERY : "

    move-object/from16 v0, v30

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    sget-boolean v30, Lcom/android/phone/photoring/PhotoRingScreen;->DBG:Z

    if-eqz v30, :cond_5

    sget-object v30, Lcom/android/phone/photoring/PhotoRingScreen;->mUriCamera:Landroid/net/Uri;

    :goto_1
    move-object/from16 v0, v32

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v31

    move-object/from16 v1, v30

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v30, Lcom/android/phone/photoring/PhotoRingScreen;->mUriCamera:Landroid/net/Uri;

    if-eqz v30, :cond_1

    sget-object v30, Lcom/android/phone/photoring/PhotoRingScreen;->mUriCamera:Landroid/net/Uri;

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-static {v0, v1}, Lcom/android/phone/photoring/PhotoringUtil;->getImageFilePathFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v30, "PhotoRingScreen"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v32, "isAgif : "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/photoring/PhotoRingScreen;->gUtil:Lcom/android/phone/photoring/GifUtil;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Lcom/android/phone/photoring/GifUtil;->isAGIF(Ljava/lang/String;)Z

    move-result v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/phone/photoring/PhotoRingScreen;->isAgif:Z

    move/from16 v30, v0

    if-eqz v30, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/photoring/PhotoRingScreen;->gUtil:Lcom/android/phone/photoring/GifUtil;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/android/phone/photoring/GifUtil;->stopAnimate()V

    const/16 v30, 0x0

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/phone/photoring/PhotoRingScreen;->isAgif:Z

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/photoring/PhotoRingScreen;->gUtil:Lcom/android/phone/photoring/GifUtil;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Lcom/android/phone/photoring/GifUtil;->isAGIF(Ljava/lang/String;)Z

    move-result v30

    if-eqz v30, :cond_7

    const-string/jumbo v30, "feature_lgt"

    invoke-static/range {v30 .. v30}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v30

    if-eqz v30, :cond_6

    const/16 v30, 0x2008

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-static {v0, v1}, Lcom/android/phone/photoring/PhotoringUtil;->showToast(Landroid/content/Context;I)V

    goto/16 :goto_0

    :cond_5
    const-string/jumbo v30, "..."

    goto/16 :goto_1

    :cond_6
    const/16 v30, 0x1

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/phone/photoring/PhotoRingScreen;->isAgif:Z

    const-string/jumbo v30, "photoring_data.png"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-static {v0, v4, v1}, Lcom/android/phone/photoring/PhotoringUtil;->copyFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/phone/photoring/PhotoringUtil;->getMCIDDir()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string/jumbo v31, "photoring_data.png"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/photoring/PhotoRingScreen;->uploadPath:Ljava/lang/String;

    const/16 v30, 0x1

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/phone/photoring/PhotoRingScreen;->mContentType:I

    invoke-direct/range {p0 .. p0}, Lcom/android/phone/photoring/PhotoRingScreen;->setImageToView()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/photoring/PhotoRingScreen;->gUtil:Lcom/android/phone/photoring/GifUtil;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/photoring/PhotoRingScreen;->uploadPath:Ljava/lang/String;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Lcom/android/phone/photoring/GifUtil;->setImagePath(Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/phone/photoring/PhotoRingScreen;->resetContentFrom()V

    goto/16 :goto_0

    :cond_7
    const/16 v30, 0x0

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/phone/photoring/PhotoRingScreen;->isAgif:Z

    sget-object v30, Lcom/android/phone/photoring/PhotoRingScreen;->mUriCamera:Landroid/net/Uri;

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-static {v0, v1}, Lcom/android/phone/photoring/PhotoringUtil;->getCropIntent(Landroid/content/Context;Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v8

    const/16 v30, 0x3

    :try_start_0
    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v8, v1}, Lcom/android/phone/photoring/PhotoRingScreen;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v9

    const-string/jumbo v30, "PhotoRingScreen"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v32, "No activity found for intent: "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :pswitch_2
    sget-object v30, Lcom/android/phone/photoring/PhotoRingScreen;->mCaptureFile:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-static {v0, v1}, Lcom/android/phone/photoring/PhotoringUtil;->getUriFromFile(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v30

    sput-object v30, Lcom/android/phone/photoring/PhotoRingScreen;->mUriCamera:Landroid/net/Uri;

    const-string/jumbo v31, "PhotoRingScreen"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v32, "mUriCamera by MCIDConstants.REQUEST_IMAGE_FROM_CAMERA : "

    move-object/from16 v0, v30

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    sget-boolean v30, Lcom/android/phone/photoring/PhotoRingScreen;->DBG:Z

    if-eqz v30, :cond_8

    sget-object v30, Lcom/android/phone/photoring/PhotoRingScreen;->mUriCamera:Landroid/net/Uri;

    :goto_2
    move-object/from16 v0, v32

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v31

    move-object/from16 v1, v30

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v30, Lcom/android/phone/photoring/PhotoRingScreen;->mCaptureFile:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-static {v0, v1}, Lcom/android/phone/photoring/PhotoringUtil;->scanMediaFile(Landroid/content/Context;Ljava/lang/String;)V

    sget-object v30, Lcom/android/phone/photoring/PhotoRingScreen;->mUriCamera:Landroid/net/Uri;

    if-eqz v30, :cond_1

    sget-object v30, Lcom/android/phone/photoring/PhotoRingScreen;->mUriCamera:Landroid/net/Uri;

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-static {v0, v1}, Lcom/android/phone/photoring/PhotoringUtil;->getCropIntent(Landroid/content/Context;Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v8

    const/16 v30, 0x3

    :try_start_1
    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v8, v1}, Lcom/android/phone/photoring/PhotoRingScreen;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v9

    const-string/jumbo v30, "PhotoRingScreen"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v32, "No activity found for intent: "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_8
    const-string/jumbo v30, "..."

    goto :goto_2

    :pswitch_3
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lcom/android/phone/photoring/PhotoringUtil;->getVideoFilePathFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/photoring/PhotoRingScreen;->mFilePath:Ljava/lang/String;

    const-string/jumbo v30, "PhotoRingScreen"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v32, "file path : "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/photoring/PhotoRingScreen;->mFilePath:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/photoring/PhotoRingScreen;->mFilePath:Ljava/lang/String;

    move-object/from16 v30, v0

    if-eqz v30, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/photoring/PhotoRingScreen;->mFilePath:Ljava/lang/String;

    move-object/from16 v30, v0

    const-string/jumbo v31, ".mp4"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v30

    if-eqz v30, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/photoring/PhotoRingScreen;->mFilePath:Ljava/lang/String;

    move-object/from16 v30, v0

    if-eqz v30, :cond_1

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lcom/android/phone/photoring/PhotoringUtil;->isNeedProcessTrim(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v17

    const/16 v30, 0x1

    move/from16 v0, v17

    move/from16 v1, v30

    if-ne v0, v1, :cond_a

    new-instance v30, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/photoring/PhotoRingScreen;->mFilePath:Ljava/lang/String;

    move-object/from16 v31, v0

    invoke-direct/range {v30 .. v31}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static/range {v30 .. v30}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v14

    new-instance v24, Landroid/content/Intent;

    const-string/jumbo v30, "android.intent.action.TRIM_SHARE"

    move-object/from16 v0, v24

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v30, "uri"

    move-object/from16 v0, v24

    move-object/from16 v1, v30

    invoke-virtual {v0, v1, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/16 v30, 0x6

    :try_start_2
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/photoring/PhotoRingScreen;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception v9

    const-string/jumbo v30, "PhotoRingScreen"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v32, "No activity found for intetn : "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_9
    const/16 v30, 0x2007

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-static {v0, v1}, Lcom/android/phone/photoring/PhotoringUtil;->showToast(Landroid/content/Context;I)V

    goto/16 :goto_0

    :cond_a
    const/16 v30, 0x2

    move/from16 v0, v17

    move/from16 v1, v30

    if-ne v0, v1, :cond_d

    new-instance v15, Ljava/io/File;

    const-string/jumbo v30, "/storage/emulated/0/photoring/"

    move-object/from16 v0, v30

    invoke-direct {v15, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    move-result v30

    if-nez v30, :cond_b

    const-string/jumbo v30, "PhotoRingScreen"

    const-string/jumbo v31, "make dir."

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v15}, Ljava/io/File;->mkdirs()Z

    const/16 v30, 0x1

    const/16 v31, 0x0

    move/from16 v0, v30

    move/from16 v1, v31

    invoke-virtual {v15, v0, v1}, Ljava/io/File;->setWritable(ZZ)Z

    const/16 v30, 0x1

    const/16 v31, 0x0

    move/from16 v0, v30

    move/from16 v1, v31

    invoke-virtual {v15, v0, v1}, Ljava/io/File;->setReadable(ZZ)Z

    :cond_b
    new-instance v16, Ljava/io/File;

    const-string/jumbo v30, "/storage/emulated/0/photoring/photoring_temp.mp4"

    move-object/from16 v0, v16

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->exists()Z

    move-result v30

    if-eqz v30, :cond_c

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->delete()Z

    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/photoring/PhotoRingScreen;->mFilePath:Ljava/lang/String;

    move-object/from16 v30, v0

    const-string/jumbo v31, "/storage/emulated/0/photoring/photoring_temp.mp4"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/android/phone/photoring/PhotoRingScreen;->resizeVideo(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_d
    const/16 v30, 0x3

    move/from16 v0, v17

    move/from16 v1, v30

    if-ne v0, v1, :cond_e

    const-wide/16 v28, 0x7cf

    const/16 v27, 0x280

    const/16 v26, 0x1e0

    const-string/jumbo v6, "photoring"

    new-instance v30, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/photoring/PhotoRingScreen;->mFilePath:Ljava/lang/String;

    move-object/from16 v31, v0

    invoke-direct/range {v30 .. v31}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static/range {v30 .. v30}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v25

    new-instance v24, Landroid/content/Intent;

    const-string/jumbo v30, "android.intent.action.MAIN"

    move-object/from16 v0, v24

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v30, "com.samsung.app.newtrim/com.samsung.app.newtrim.trimactivity.TrimActivity"

    invoke-static/range {v30 .. v30}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v30

    move-object/from16 v0, v24

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string/jumbo v30, "android.intent.category.LAUNCHER"

    move-object/from16 v0, v24

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v30, "uri"

    move-object/from16 v0, v24

    move-object/from16 v1, v30

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string/jumbo v30, "VIDEO_OUTPUT_SIZE"

    move-object/from16 v0, v24

    move-object/from16 v1, v30

    move-wide/from16 v2, v28

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string/jumbo v30, "VIDEO_OUTPUT_WIDTH"

    move-object/from16 v0, v24

    move-object/from16 v1, v30

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v30, "VIDEO_OUTPUT_HEIGHT"

    move-object/from16 v0, v24

    move-object/from16 v1, v30

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v30, "CALLER_APP"

    move-object/from16 v0, v24

    move-object/from16 v1, v30

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v30, 0x6

    :try_start_3
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/photoring/PhotoRingScreen;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_3
    .catch Landroid/content/ActivityNotFoundException; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_0

    :catch_3
    move-exception v9

    const-string/jumbo v30, "PhotoRingScreen"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v32, "No activity found for intetn : "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_e
    const/16 v30, 0x2

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/phone/photoring/PhotoRingScreen;->mContentType:I

    sput-object v22, Lcom/android/phone/photoring/PhotoRingScreen;->mUriVideos:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/photoring/PhotoRingScreen;->mFilePath:Ljava/lang/String;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/photoring/PhotoRingScreen;->uploadPath:Ljava/lang/String;

    sget-object v30, Lcom/android/phone/photoring/PhotoRingScreen;->mUriVideos:Landroid/net/Uri;

    const-string/jumbo v31, "photoring_data.png"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-static {v0, v1, v2}, Lcom/android/phone/photoring/PhotoringUtil;->setVideo(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)J

    move-result-wide v30

    const-wide/16 v32, -0x1

    cmp-long v30, v30, v32

    if-lez v30, :cond_f

    invoke-direct/range {p0 .. p0}, Lcom/android/phone/photoring/PhotoRingScreen;->setImageToView()V

    :goto_3
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/photoring/PhotoRingScreen;->resetContentFrom()V

    goto/16 :goto_0

    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/photoring/PhotoRingScreen;->mPhotoringContentsText:Landroid/widget/TextView;

    move-object/from16 v30, v0

    const/16 v31, 0x4

    invoke-virtual/range {v30 .. v31}, Landroid/widget/TextView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/photoring/PhotoRingScreen;->mVideoErrIcon:Landroid/widget/ImageView;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    invoke-virtual/range {v30 .. v31}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/photoring/PhotoRingScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v30

    const v31, 0x7f020038

    invoke-static/range {v30 .. v31}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v23

    const-string/jumbo v30, "photoring_data_thumb.png"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v30

    invoke-static {v0, v1, v2}, Lcom/android/phone/photoring/PhotoringUtil;->saveBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    goto :goto_3

    :pswitch_4
    const-string/jumbo v30, "PhotoRingScreen"

    const-string/jumbo v31, "MCIDConstants.REQUEST_VIDEO_FROM_TRIM"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v30

    sput-object v30, Lcom/android/phone/photoring/PhotoRingScreen;->mUriVideos:Landroid/net/Uri;

    invoke-direct/range {p0 .. p0}, Lcom/android/phone/photoring/PhotoRingScreen;->Pick_Video_From_Trim()V

    goto/16 :goto_0

    :pswitch_5
    const-string/jumbo v30, "PhotoRingScreen"

    const-string/jumbo v31, "callmessage selected"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    const-string/jumbo v30, "callmessage"

    move-object/from16 v0, v30

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    const-string/jumbo v30, "contentPath"

    move-object/from16 v0, v30

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v31, "PhotoRingScreen"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v32, "returned mgs - "

    move-object/from16 v0, v30

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    sget-boolean v30, Lcom/android/phone/photoring/PhotoRingScreen;->DBG:Z

    if-eqz v30, :cond_13

    move-object/from16 v30, v21

    :goto_4
    move-object/from16 v0, v32

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string/jumbo v32, ", and contents - "

    move-object/from16 v0, v30

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    sget-boolean v30, Lcom/android/phone/photoring/PhotoRingScreen;->DBG:Z

    if-eqz v30, :cond_14

    move-object/from16 v30, v7

    :goto_5
    move-object/from16 v0, v32

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v31

    move-object/from16 v1, v30

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/phone/photoring/PhotoRingScreen;->isAgif:Z

    move/from16 v30, v0

    if-eqz v30, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/photoring/PhotoRingScreen;->gUtil:Lcom/android/phone/photoring/GifUtil;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/android/phone/photoring/GifUtil;->stopAnimate()V

    const/16 v30, 0x0

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/phone/photoring/PhotoRingScreen;->isAgif:Z

    :cond_10
    if-eqz v7, :cond_12

    const-string/jumbo v30, ".png"

    move-object/from16 v0, v30

    invoke-virtual {v7, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v30

    if-nez v30, :cond_11

    const-string/jumbo v30, ".jpg"

    move-object/from16 v0, v30

    invoke-virtual {v7, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v30

    if-eqz v30, :cond_16

    :cond_11
    const-string/jumbo v30, "file://"

    const-string/jumbo v31, ""

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-virtual {v7, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/phone/photoring/PhotoRingScreen;->uploadPath:Ljava/lang/String;

    const/16 v30, 0x1

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/phone/photoring/PhotoRingScreen;->mContentType:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/photoring/PhotoRingScreen;->gUtil:Lcom/android/phone/photoring/GifUtil;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-virtual {v0, v13}, Lcom/android/phone/photoring/GifUtil;->isAGIF(Ljava/lang/String;)Z

    move-result v30

    if-eqz v30, :cond_15

    const-string/jumbo v30, "photoring_data.png"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-static {v0, v13, v1}, Lcom/android/phone/photoring/PhotoringUtil;->copyFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const/16 v30, 0x1

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/phone/photoring/PhotoRingScreen;->isAgif:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/photoring/PhotoRingScreen;->gUtil:Lcom/android/phone/photoring/GifUtil;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-virtual {v0, v13}, Lcom/android/phone/photoring/GifUtil;->setImagePath(Ljava/lang/String;)V

    :goto_6
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/photoring/PhotoRingScreen;->setImageToView()V

    invoke-direct/range {p0 .. p0}, Lcom/android/phone/photoring/PhotoRingScreen;->resetContentFrom()V

    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/photoring/PhotoRingScreen;->mRecipientsText:Landroid/widget/AutoCompleteTextView;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v21, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/photoring/PhotoRingScreen;->mRecipientsText:Landroid/widget/AutoCompleteTextView;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/photoring/PhotoRingScreen;->mRecipientsText:Landroid/widget/AutoCompleteTextView;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/widget/AutoCompleteTextView;->length()I

    move-result v31

    invoke-virtual/range {v30 .. v31}, Landroid/widget/AutoCompleteTextView;->setSelection(I)V

    goto/16 :goto_0

    :cond_13
    const-string/jumbo v30, "..."

    goto/16 :goto_4

    :cond_14
    const-string/jumbo v30, "..."

    goto/16 :goto_5

    :cond_15
    invoke-static {v13}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v19

    const-string/jumbo v30, "photoring_data.png"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v30

    invoke-static {v0, v1, v2}, Lcom/android/phone/photoring/PhotoringUtil;->saveBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    goto :goto_6

    :cond_16
    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v30

    sput-object v30, Lcom/android/phone/photoring/PhotoRingScreen;->mUriVideos:Landroid/net/Uri;

    const-string/jumbo v30, "file://"

    move-object/from16 v0, v30

    invoke-virtual {v7, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v30

    if-eqz v30, :cond_17

    const-string/jumbo v30, "photoring_data.png"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-static {v0, v7, v1}, Lcom/android/phone/photoring/PhotoringUtil;->setVideoFromFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)J

    const-string/jumbo v30, "file://"

    const-string/jumbo v31, ""

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-virtual {v7, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/photoring/PhotoRingScreen;->uploadPath:Ljava/lang/String;

    :goto_7
    const/16 v30, 0x2

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/phone/photoring/PhotoRingScreen;->mContentType:I

    goto :goto_6

    :cond_17
    sget-object v30, Lcom/android/phone/photoring/PhotoRingScreen;->mUriVideos:Landroid/net/Uri;

    const-string/jumbo v31, "photoring_data.png"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-static {v0, v1, v2}, Lcom/android/phone/photoring/PhotoringUtil;->setVideo(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)J

    sget-object v30, Lcom/android/phone/photoring/PhotoRingScreen;->mUriVideos:Landroid/net/Uri;

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-static {v0, v1}, Lcom/android/phone/photoring/PhotoringUtil;->getVideoFilePathFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/photoring/PhotoRingScreen;->uploadPath:Ljava/lang/String;

    goto :goto_7

    :pswitch_6
    const-string/jumbo v30, "PhotoRingScreen"

    const-string/jumbo v31, "onActivityResult(MCIDConstants.REQUEST_NUMBER_FROM_CONTACTS)"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p3, :cond_1

    const-string/jumbo v30, "result"

    move-object/from16 v0, p3

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v30

    if-eqz v30, :cond_1

    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v30

    const-string/jumbo v31, "result"

    invoke-virtual/range {v30 .. v31}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v18

    const-string/jumbo v31, "PhotoRingScreen"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v32, "numberFromContact = "

    move-object/from16 v0, v30

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    sget-boolean v30, Lcom/android/phone/photoring/PhotoRingScreen;->DBG:Z

    if-eqz v30, :cond_1c

    move-object/from16 v30, v18

    :goto_8
    move-object/from16 v0, v32

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v31

    move-object/from16 v1, v30

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v18, :cond_1b

    const/16 v20, 0x0

    invoke-interface/range {v18 .. v18}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_18
    :goto_9
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v30

    if-eqz v30, :cond_1b

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    sget-boolean v30, Lcom/android/phone/photoring/PhotoRingScreen;->DBG:Z

    if-eqz v30, :cond_19

    const-string/jumbo v30, "PhotoRingScreen"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v32, "idAndNumber = "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v30, "PhotoRingScreen"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v32, "idAndNumber.indexOf(\';\') = "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const/16 v32, 0x3b

    move/from16 v0, v32

    invoke-virtual {v11, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_19
    const/16 v30, 0x3b

    move/from16 v0, v30

    invoke-virtual {v11, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v30

    const/16 v31, -0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-eq v0, v1, :cond_18

    const/16 v30, 0x3b

    move/from16 v0, v30

    invoke-virtual {v11, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v30

    add-int/lit8 v30, v30, 0x1

    move/from16 v0, v30

    invoke-virtual {v11, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v20

    sget-boolean v30, Lcom/android/phone/photoring/PhotoRingScreen;->DBG:Z

    if-eqz v30, :cond_1a

    const-string/jumbo v30, "PhotoRingScreen"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v32, "sCallerNo = "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v30, "PhotoRingScreen"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v32, "sCallerNo.trim().length() = "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->length()I

    move-result v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1a
    if-eqz v20, :cond_1e

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->length()I

    move-result v30

    if-lez v30, :cond_1e

    const-string/jumbo v30, "P"

    const-string/jumbo v31, ","

    move-object/from16 v0, v20

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v30

    const-string/jumbo v31, "-"

    const-string/jumbo v32, ""

    invoke-virtual/range {v30 .. v32}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v30

    const-string/jumbo v31, "W"

    const-string/jumbo v32, ";"

    invoke-virtual/range {v30 .. v32}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/photoring/PhotoRingScreen;->mNumber:Ljava/lang/String;

    const-string/jumbo v31, "PhotoRingScreen"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v32, "mNumber = "

    move-object/from16 v0, v30

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    sget-boolean v30, Lcom/android/phone/photoring/PhotoRingScreen;->DBG:Z

    if-eqz v30, :cond_1d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/photoring/PhotoRingScreen;->mNumber:Ljava/lang/String;

    move-object/from16 v30, v0

    :goto_a
    move-object/from16 v0, v32

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v31

    move-object/from16 v1, v30

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1b
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/photoring/PhotoRingScreen;->loadPhotoNameInfo()V

    goto/16 :goto_0

    :cond_1c
    const-string/jumbo v30, "xxx-xxxx"

    goto/16 :goto_8

    :cond_1d
    const-string/jumbo v30, "..."

    goto :goto_a

    :cond_1e
    const/16 v20, 0x0

    goto/16 :goto_9

    :pswitch_7
    const-string/jumbo v30, "finishApp"

    const/16 v31, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v10

    if-eqz v10, :cond_1f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/photoring/PhotoRingScreen;->iMM:Landroid/view/inputmethod/InputMethodManager;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/photoring/PhotoRingScreen;->mNumberText:Landroid/widget/AutoCompleteTextView;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/widget/AutoCompleteTextView;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v31

    const/16 v32, 0x0

    invoke-virtual/range {v30 .. v32}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/photoring/PhotoRingScreen;->iMM:Landroid/view/inputmethod/InputMethodManager;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/photoring/PhotoRingScreen;->mRecipientsText:Landroid/widget/AutoCompleteTextView;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/widget/AutoCompleteTextView;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v31

    const/16 v32, 0x0

    invoke-virtual/range {v30 .. v32}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/photoring/PhotoRingScreen;->finish()V

    goto/16 :goto_0

    :cond_1f
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/photoring/PhotoRingScreen;->checkMobileData()Z

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_7
        :pswitch_5
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 20

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v7

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "onClick id : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/phone/photoring/PhotoRingScreen;->log(Ljava/lang/String;)V

    sparse-switch v7, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/photoring/PhotoRingScreen;->startRecentCallMessageActivity()V

    goto :goto_0

    :sswitch_1
    const v17, 0x7f1001d2

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/CheckBox;

    invoke-virtual {v10}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v17

    if-eqz v17, :cond_1

    const/16 v17, 0x0

    :goto_1
    move/from16 v0, v17

    invoke-virtual {v10, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    :cond_1
    const/16 v17, 0x1

    goto :goto_1

    :sswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/photoring/PhotoRingScreen;->mNumberText:Landroid/widget/AutoCompleteTextView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/photoring/PhotoRingScreen;->mNumber:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_3

    :cond_2
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/photoring/PhotoRingScreen;->mNumber:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    if-nez v17, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/photoring/PhotoRingScreen;->mNumberText:Landroid/widget/AutoCompleteTextView;

    move-object/from16 v17, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/photoring/PhotoRingScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f0d0988

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/widget/AutoCompleteTextView;->setError(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/photoring/PhotoRingScreen;->mNumberText:Landroid/widget/AutoCompleteTextView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/AutoCompleteTextView;->requestFocus()Z

    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/phone/photoring/PhotoRingScreen;->bEmptyNumErr:Z

    goto :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/photoring/PhotoRingScreen;->contactName:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_2

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/phone/photoring/PhotoRingScreen;->mNumber:Ljava/lang/String;

    goto :goto_2

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/photoring/PhotoRingScreen;->mNumber:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    const/16 v18, 0xa

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/photoring/PhotoRingScreen;->mNumber:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    const/16 v18, 0x4

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_5

    const/16 v17, 0x2005

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/phone/photoring/PhotoringUtil;->showToast(Landroid/content/Context;I)V

    goto/16 :goto_0

    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/photoring/PhotoRingScreen;->mContentType:I

    move/from16 v17, v0

    if-nez v17, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/photoring/PhotoRingScreen;->mRecipientsText:Landroid/widget/AutoCompleteTextView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v17

    if-eqz v17, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/photoring/PhotoRingScreen;->mRecipientsText:Landroid/widget/AutoCompleteTextView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    if-nez v17, :cond_7

    :cond_6
    const/16 v17, 0x2004

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/phone/photoring/PhotoringUtil;->showToast(Landroid/content/Context;I)V

    :goto_3
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/photoring/PhotoRingScreen;->dismissMenuDialog()V

    goto/16 :goto_0

    :cond_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/phone/photoring/PhotoRingScreen;->mIsOverLength:Z

    move/from16 v17, v0

    if-eqz v17, :cond_8

    const/16 v17, 0x2001

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/phone/photoring/PhotoringUtil;->showToast(Landroid/content/Context;I)V

    goto :goto_3

    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/photoring/PhotoRingScreen;->mContentType:I

    move/from16 v17, v0

    if-nez v17, :cond_a

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/photoring/PhotoRingScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string/jumbo v18, "key_photoring_duty_show"

    const/16 v19, 0x1

    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_a

    :cond_9
    invoke-static/range {p0 .. p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v8

    const v17, 0x7f040099

    const/16 v18, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v8, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    const v17, 0x7f1001d1

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v17, 0x7f1001d0

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/photoring/PhotoRingScreen;->mContentType:I

    move/from16 v17, v0

    if-nez v17, :cond_c

    const/16 v17, 0x8

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_4
    const v17, 0x7f1001d2

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/CheckBox;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/photoring/PhotoRingScreen;->mCB:Landroid/widget/CheckBox;

    new-instance v4, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    new-instance v17, Lcom/android/phone/photoring/PhotoRingScreen$12;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/phone/photoring/PhotoRingScreen$12;-><init>(Lcom/android/phone/photoring/PhotoRingScreen;)V

    const v18, 0x7f0d0978

    move/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v4, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v17, Lcom/android/phone/photoring/PhotoRingScreen$13;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/phone/photoring/PhotoRingScreen$13;-><init>(Lcom/android/phone/photoring/PhotoRingScreen;)V

    const v18, 0x7f0d0327

    move/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v4, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v17, Lcom/android/phone/photoring/PhotoRingScreen$14;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/phone/photoring/PhotoRingScreen$14;-><init>(Lcom/android/phone/photoring/PhotoRingScreen;)V

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_3

    :cond_a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/photoring/PhotoRingScreen;->mContentType:I

    move/from16 v17, v0

    if-eqz v17, :cond_b

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/photoring/PhotoRingScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string/jumbo v18, "key_photoring_duty_media_show"

    const/16 v19, 0x1

    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_9

    :cond_b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/photoring/PhotoRingScreen;->mContentType:I

    move/from16 v17, v0

    if-eqz v17, :cond_10

    invoke-direct/range {p0 .. p0}, Lcom/android/phone/photoring/PhotoRingScreen;->checkMobileData()Z

    move-result v17

    if-eqz v17, :cond_f

    const-string/jumbo v17, "feature_lgt"

    invoke-static/range {v17 .. v17}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/photoring/PhotoRingScreen;->mNumber:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string/jumbo v18, "#"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/photoring/PhotoRingScreen;->mPM:Lcom/android/phone/photoring/PhotoRingMgr;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/photoring/PhotoRingScreen;->uploadPath:Ljava/lang/String;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v17 .. v19}, Lcom/android/phone/photoring/PhotoRingMgr;->uploadContentCall(Ljava/lang/String;Z)V

    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/photoring/PhotoRingScreen;->pMe:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/photoring/PhotoRingScreen;->pMe:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f0d09d5

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/photoring/PhotoRingScreen;->mProgress:Landroid/app/ProgressDialog;

    goto/16 :goto_3

    :cond_c
    const-string/jumbo v17, "ims_support_photo_ring"

    invoke-static/range {v17 .. v17}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_d

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/photoring/PhotoRingScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f0d0982

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v15, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    :cond_d
    const/16 v17, 0x8

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_4

    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/photoring/PhotoRingScreen;->mPM:Lcom/android/phone/photoring/PhotoRingMgr;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/photoring/PhotoRingScreen;->uploadPath:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/android/phone/photoring/PhotoRingMgr;->uploadContentCall(Ljava/lang/String;)V

    goto :goto_5

    :cond_f
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/phone/photoring/PhotoRingScreen;->mHasphotoringToDial:Z

    goto/16 :goto_3

    :cond_10
    const-string/jumbo v17, "ims_support_photo_ring"

    invoke-static/range {v17 .. v17}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_11

    invoke-direct/range {p0 .. p0}, Lcom/android/phone/photoring/PhotoRingScreen;->placeCallIncludeMessage()V

    goto/16 :goto_3

    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/photoring/PhotoRingScreen;->mRecipientsText:Landroid/widget/AutoCompleteTextView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/phone/photoring/PhotoringUtil;->convertCharacter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, " setRealtimeServiceInfoCall message without image: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/phone/photoring/PhotoRingScreen;->englog(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/photoring/PhotoRingScreen;->mPM:Lcom/android/phone/photoring/PhotoRingMgr;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/photoring/PhotoRingScreen;->mNumber:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/phone/photoring/PhotoRingScreen;->makeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v11, v2}, Lcom/android/phone/photoring/PhotoRingMgr;->setRealtimeServiceInfoCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :sswitch_3
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/photoring/PhotoRingScreen;->showEditMenuDialog()V

    goto/16 :goto_0

    :sswitch_4
    const-string/jumbo v17, "PhotoRingScreen"

    const-string/jumbo v18, "add contact for photoring"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/photoring/PhotoRingScreen;->loadTabs()V

    goto/16 :goto_0

    :sswitch_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/photoring/PhotoRingScreen;->mContentType:I

    move/from16 v17, v0

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_0

    new-instance v9, Landroid/content/Intent;

    const-string/jumbo v17, "android.intent.action.VIEW"

    move-object/from16 v0, v17

    invoke-direct {v9, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v17, Lcom/android/phone/photoring/PhotoRingScreen;->mUriVideos:Landroid/net/Uri;

    invoke-virtual/range {v17 .. v17}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v17

    const-string/jumbo v18, "file://"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_12

    sget-object v17, Lcom/android/phone/photoring/PhotoRingScreen;->mUriVideos:Landroid/net/Uri;

    invoke-virtual/range {v17 .. v17}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v17

    const-string/jumbo v18, "file://"

    const-string/jumbo v19, ""

    invoke-virtual/range {v17 .. v19}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v13

    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/photoring/PhotoRingScreen;->pMe:Landroid/content/Context;

    move-object/from16 v17, v0

    const-string/jumbo v18, "com.android.phone.fileprovider"

    new-instance v19, Ljava/io/File;

    move-object/from16 v0, v19

    invoke-direct {v0, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static/range {v17 .. v19}, Landroid/support/v4/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v16

    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string/jumbo v17, "video/*"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v17, "from_photoring_to_videoplayer"

    const/16 v18, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :try_start_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/android/phone/photoring/PhotoRingScreen;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v6

    const-string/jumbo v17, "PhotoRingScreen"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "Couldn\'t play video "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    sget-object v19, Lcom/android/phone/photoring/PhotoRingScreen;->mUriVideos:Landroid/net/Uri;

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    :cond_12
    sget-object v17, Lcom/android/phone/photoring/PhotoRingScreen;->mUriVideos:Landroid/net/Uri;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/phone/photoring/PhotoringUtil;->getVideoFilePathFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v13

    goto :goto_6

    :sswitch_6
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/phone/photoring/PhotoRingScreen;->editMenuSelected(I)V

    goto/16 :goto_0

    :sswitch_7
    const/16 v17, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/phone/photoring/PhotoRingScreen;->editMenuSelected(I)V

    goto/16 :goto_0

    :sswitch_8
    const/16 v17, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/phone/photoring/PhotoRingScreen;->editMenuSelected(I)V

    goto/16 :goto_0

    :sswitch_9
    const/16 v17, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/phone/photoring/PhotoRingScreen;->editMenuSelected(I)V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x7f1001c3 -> :sswitch_6
        0x7f1001c6 -> :sswitch_8
        0x7f1001ca -> :sswitch_7
        0x7f1001cd -> :sswitch_9
        0x7f1001d1 -> :sswitch_1
        0x7f1001f0 -> :sswitch_4
        0x7f1001f2 -> :sswitch_5
        0x7f1001f6 -> :sswitch_0
        0x7f1001f7 -> :sswitch_3
        0x7f1001f8 -> :sswitch_2
    .end sparse-switch
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 13

    const/4 v12, 0x0

    const/16 v10, 0x8

    const/4 v11, 0x1

    const/4 v9, 0x0

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v8

    packed-switch v8, :pswitch_data_0

    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v8

    return v8

    :pswitch_0
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v8, "android.intent.action.VIEW"

    invoke-direct {v2, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v8, Lcom/android/phone/photoring/PhotoRingScreen;->mUriVideos:Landroid/net/Uri;

    invoke-virtual {v8}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "file://"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    sget-object v8, Lcom/android/phone/photoring/PhotoRingScreen;->mUriVideos:Landroid/net/Uri;

    invoke-virtual {v8}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "file://"

    const-string/jumbo v10, ""

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    :goto_1
    iget-object v8, p0, Lcom/android/phone/photoring/PhotoRingScreen;->pMe:Landroid/content/Context;

    const-string/jumbo v9, "com.android.phone.fileprovider"

    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v8, v9, v10}, Landroid/support/v4/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v2, v11}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string/jumbo v8, "video/*"

    invoke-virtual {v2, v5, v8}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v8, "from_photoring_to_videoplayer"

    invoke-virtual {v2, v8, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p0, v2}, Lcom/android/phone/photoring/PhotoRingScreen;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v8, "PhotoRingScreen"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Couldn\'t play video "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Lcom/android/phone/photoring/PhotoRingScreen;->mUriVideos:Landroid/net/Uri;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_1
    sget-object v8, Lcom/android/phone/photoring/PhotoRingScreen;->mUriVideos:Landroid/net/Uri;

    invoke-static {p0, v8}, Lcom/android/phone/photoring/PhotoringUtil;->getVideoFilePathFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :pswitch_1
    sget-object v8, Lcom/android/phone/photoring/PhotoRingScreen;->mUriVideos:Landroid/net/Uri;

    invoke-virtual {v8}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "file://"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    sget-object v8, Lcom/android/phone/photoring/PhotoRingScreen;->mUriVideos:Landroid/net/Uri;

    invoke-virtual {v8}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "file://"

    const-string/jumbo v10, ""

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mFilePath:Ljava/lang/String;

    :goto_2
    iget-object v8, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mFilePath:Ljava/lang/String;

    if-eqz v8, :cond_0

    new-instance v8, Ljava/io/File;

    iget-object v9, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mFilePath:Ljava/lang/String;

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v8}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v5

    const-string/jumbo v8, "PhotoRingScreen"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "onContextItemSelected uri : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v8, "ims_photoring_use_nxp"

    invoke-static {v8}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v8, "android.intent.action.TRIM_SHARE"

    invoke-direct {v4, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v8, "option"

    const-string/jumbo v9, "PostProcessedTrim"

    invoke-virtual {v4, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_3
    const-string/jumbo v8, "uri"

    invoke-virtual {v4, v8, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 v8, 0x6

    :try_start_1
    invoke-virtual {p0, v4, v8}, Lcom/android/phone/photoring/PhotoRingScreen;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    const-string/jumbo v8, "PhotoRingScreen"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "No activity found for intent: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_2
    sget-object v8, Lcom/android/phone/photoring/PhotoRingScreen;->mUriVideos:Landroid/net/Uri;

    invoke-static {p0, v8}, Lcom/android/phone/photoring/PhotoringUtil;->getVideoFilePathFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mFilePath:Ljava/lang/String;

    goto :goto_2

    :cond_3
    const-wide/16 v6, 0x7cf

    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v8, "android.intent.action.MAIN"

    invoke-direct {v4, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v8, "com.samsung.app.newtrim/com.samsung.app.newtrim.trimactivity.TrimActivity"

    invoke-static {v8}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string/jumbo v8, "android.intent.category.LAUNCHER"

    invoke-virtual {v4, v8}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v8, "VIDEO_OUTPUT_SIZE"

    invoke-virtual {v4, v8, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string/jumbo v8, "VIDEO_OUTPUT_WIDTH"

    const/16 v9, 0x280

    invoke-virtual {v4, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v8, "VIDEO_OUTPUT_HEIGHT"

    const/16 v9, 0x1e0

    invoke-virtual {v4, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v8, "CALLER_APP"

    const-string/jumbo v9, "photoring"

    invoke-virtual {v4, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_3

    :pswitch_2
    iput v9, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mContentType:I

    iget-object v8, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mPreparedMediaButton:Landroid/widget/ImageView;

    invoke-virtual {v8, v12}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v8, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mPreparedMediaButton:Landroid/widget/ImageView;

    invoke-virtual {v8, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v8, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mPhotoringContentsText:Landroid/widget/TextView;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v8, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mVideoErrIcon:Landroid/widget/ImageView;

    invoke-virtual {v8, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-boolean v8, p0, Lcom/android/phone/photoring/PhotoRingScreen;->isAgif:Z

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/phone/photoring/PhotoRingScreen;->gUtil:Lcom/android/phone/photoring/GifUtil;

    invoke-virtual {v8}, Lcom/android/phone/photoring/GifUtil;->stopAnimate()V

    iput-boolean v9, p0, Lcom/android/phone/photoring/PhotoRingScreen;->isAgif:Z

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 14

    const v8, 0x7f0d096d

    const/16 v13, 0x8

    const/4 v12, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string/jumbo v7, "feature_lgt"

    invoke-static {v7}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {p0, v8}, Lcom/android/phone/photoring/PhotoRingScreen;->setTitle(I)V

    :goto_0
    const-string/jumbo v7, "onCreate"

    invoke-direct {p0, v7}, Lcom/android/phone/photoring/PhotoRingScreen;->log(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/phone/photoring/PhotoRingScreen;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/phone/photoring/PhotoRingScreen;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v13}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    invoke-virtual {v0, v11}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    :cond_0
    new-instance v5, Landroid/content/IntentFilter;

    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v7, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v5, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v7, v5}, Lcom/android/phone/photoring/PhotoRingScreen;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-static {}, Lcom/android/phone/photoring/PhotoRingMgr;->getInstance()Lcom/android/phone/photoring/PhotoRingMgr;

    move-result-object v7

    iput-object v7, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mPM:Lcom/android/phone/photoring/PhotoRingMgr;

    iput-object p0, p0, Lcom/android/phone/photoring/PhotoRingScreen;->pMe:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mPM:Lcom/android/phone/photoring/PhotoRingMgr;

    invoke-virtual {v7, v4}, Lcom/android/phone/photoring/PhotoRingMgr;->getNumberFromIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mNumber:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mNumber:Ljava/lang/String;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mNumber:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v7, v11, :cond_4

    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/photoring/PhotoRingScreen;->finish()V

    return-void

    :cond_2
    const-string/jumbo v7, "feature_ktt"

    invoke-static {v7}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    const v7, 0x7f0d0a6a

    invoke-virtual {p0, v7}, Lcom/android/phone/photoring/PhotoRingScreen;->setTitle(I)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v8}, Lcom/android/phone/photoring/PhotoRingScreen;->setTitle(I)V

    goto :goto_0

    :cond_4
    iget-object v7, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mPM:Lcom/android/phone/photoring/PhotoRingMgr;

    iget-object v8, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mCallMessageNetworkListener:Lcom/android/phone/photoring/ICallMessageNetworkListener;

    invoke-virtual {v7, v8}, Lcom/android/phone/photoring/PhotoRingMgr;->registerCallMessageNetworkListener(Lcom/android/phone/photoring/ICallMessageNetworkListener;)V

    iget-object v7, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mPM:Lcom/android/phone/photoring/PhotoRingMgr;

    invoke-virtual {v7}, Lcom/android/phone/photoring/PhotoRingMgr;->getContentSpecCall()V

    invoke-virtual {p0}, Lcom/android/phone/photoring/PhotoRingScreen;->getFilesDir()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/phone/photoring/PhotoringUtil;->setMCIDDir(Ljava/lang/String;)V

    const-string/jumbo v7, "photoring_uri"

    invoke-virtual {v4, v7}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_9

    const-string/jumbo v7, "photoring_uri"

    invoke-virtual {v4, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/phone/photoring/PhotoRingScreen;->PRUrl:Ljava/lang/String;

    const-string/jumbo v1, "photoring_data.png"

    iget-object v7, p0, Lcom/android/phone/photoring/PhotoRingScreen;->PRUrl:Ljava/lang/String;

    invoke-static {v7}, Lcom/android/phone/photoring/PhotoringUtil;->isImagePath(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_5

    const-string/jumbo v1, "photoring_data.mp4"

    :cond_5
    const-string/jumbo v7, "call_type"

    invoke-virtual {v4, v7, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    iput v7, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mContentFrom:I

    const-string/jumbo v7, "feature_ktt"

    invoke-static {v7}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    iget v7, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mContentFrom:I

    if-gez v7, :cond_7

    const-string/jumbo v1, "mcid_data.png"

    :cond_6
    :goto_1
    :try_start_0
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v1, v8}, Lcom/android/phone/PhoneApp;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    iget-object v7, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mPM:Lcom/android/phone/photoring/PhotoRingMgr;

    iget-object v8, p0, Lcom/android/phone/photoring/PhotoRingScreen;->PRUrl:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/phone/photoring/PhotoringUtil;->getMCIDDir()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/android/phone/photoring/PhotoRingMgr;->downloadContent(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v11, p0, Lcom/android/phone/photoring/PhotoRingScreen;->needDownContent:Z

    iget v7, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mContentFrom:I

    if-gez v7, :cond_8

    iput-boolean v11, p0, Lcom/android/phone/photoring/PhotoRingScreen;->bShowOnly:Z

    iget-object v7, p0, Lcom/android/phone/photoring/PhotoRingScreen;->pMe:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/phone/photoring/PhotoRingScreen;->pMe:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0d09d5

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v12, v8}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v7

    iput-object v7, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mProgress:Landroid/app/ProgressDialog;

    return-void

    :cond_7
    const-string/jumbo v1, "photoring_data.png"

    goto :goto_1

    :catch_0
    move-exception v2

    const-string/jumbo v7, "make file failed"

    invoke-direct {p0, v7}, Lcom/android/phone/photoring/PhotoRingScreen;->log(Ljava/lang/String;)V

    goto :goto_2

    :cond_8
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "contentFrom : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mContentFrom:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/phone/photoring/PhotoRingScreen;->log(Ljava/lang/String;)V

    :cond_9
    invoke-direct {p0}, Lcom/android/phone/photoring/PhotoRingScreen;->initPhotoRingScreen()V

    const-string/jumbo v7, "cnap_name"

    invoke-virtual {v4, v7}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_a

    iget-object v7, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mRecipientsText:Landroid/widget/AutoCompleteTextView;

    const-string/jumbo v8, "cnap_name"

    invoke-virtual {v4, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    :cond_a
    invoke-virtual {p0}, Lcom/android/phone/photoring/PhotoRingScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "key_photoring_use_guide_show"

    invoke-static {v7, v8, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v11, :cond_b

    new-instance v6, Landroid/content/Intent;

    const-class v7, Lcom/android/phone/photoring/PhotoringGuide;

    invoke-direct {v6, p0, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v6, v13}, Lcom/android/phone/photoring/PhotoRingScreen;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_3
    return-void

    :cond_b
    invoke-direct {p0}, Lcom/android/phone/photoring/PhotoRingScreen;->checkMobileData()Z

    goto :goto_3
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 4

    const/4 v3, 0x2

    const/4 v2, 0x0

    iget v0, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mContentType:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mContentType:I

    if-ne v0, v3, :cond_0

    const/4 v0, 0x1

    const v1, 0x7f0d0974

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    const v0, 0x7f0d056e

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    :cond_0
    const/4 v0, 0x3

    const v1, 0x7f0d0570

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    :cond_1
    iget-object v0, p0, Lcom/android/phone/photoring/PhotoRingScreen;->iMM:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mRecipientsText:Landroid/widget/AutoCompleteTextView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoRingScreen;->iMM:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mRecipientsText:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_2
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    const-string/jumbo v0, "onDestroy"

    invoke-direct {p0, v0}, Lcom/android/phone/photoring/PhotoRingScreen;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mPM:Lcom/android/phone/photoring/PhotoRingMgr;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mPM:Lcom/android/phone/photoring/PhotoRingMgr;

    iget-object v1, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mCallMessageNetworkListener:Lcom/android/phone/photoring/ICallMessageNetworkListener;

    invoke-virtual {v0, v1}, Lcom/android/phone/photoring/PhotoRingMgr;->deregisterCallMessageNetworkListener(Lcom/android/phone/photoring/ICallMessageNetworkListener;)V

    iput-object v2, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mPM:Lcom/android/phone/photoring/PhotoRingMgr;

    :cond_0
    iput-object v2, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mRecipientsText:Landroid/widget/AutoCompleteTextView;

    iput-object v2, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mByteCnt:Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mNameView:Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mPhotoringContentsText:Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mVideoErrIcon:Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mBTN_MessageList:Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mBTN_Send:Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/phone/photoring/PhotoRingScreen;->iMM:Landroid/view/inputmethod/InputMethodManager;

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/phone/photoring/PhotoRingScreen;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-object v2, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mReceiver:Landroid/content/BroadcastReceiver;

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/photoring/PhotoRingScreen;->bUnregierShowme:Z

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onPause()V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    const-string/jumbo v0, "onPause"

    invoke-direct {p0, v0}, Lcom/android/phone/photoring/PhotoRingScreen;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoRingScreen;->iMM:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mRecipientsText:Landroid/widget/AutoCompleteTextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoRingScreen;->iMM:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mRecipientsText:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_0
    iget-boolean v0, p0, Lcom/android/phone/photoring/PhotoRingScreen;->isAgif:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoRingScreen;->gUtil:Lcom/android/phone/photoring/GifUtil;

    invoke-virtual {v0}, Lcom/android/phone/photoring/GifUtil;->stopAnimate()V

    :cond_1
    const-string/jumbo v0, "support_bixby"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mStateListener:Lcom/android/phone/ia/IAInterimListener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/bixby/BixbyApi;->clearInterimStateListener()V

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    const-string/jumbo v1, "PhoneMCID"

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/bixby/BixbyApi;->logExitState(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mStateListener:Lcom/android/phone/ia/IAInterimListener;

    invoke-interface {v0}, Lcom/android/phone/ia/IAInterimListener;->clear()V

    iput-object v3, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mStateListener:Lcom/android/phone/ia/IAInterimListener;

    :cond_2
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    const/4 v0, 0x1

    return v0
.end method

.method protected onResume()V
    .locals 4

    const/4 v2, 0x0

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const-string/jumbo v0, "onResume"

    invoke-direct {p0, v0}, Lcom/android/phone/photoring/PhotoRingScreen;->log(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/phone/photoring/PhotoRingScreen;->bShowOnly:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mRecipientsText:Landroid/widget/AutoCompleteTextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mRecipientsText:Landroid/widget/AutoCompleteTextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setInputType(I)V

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mRecipientsText:Landroid/widget/AutoCompleteTextView;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setImeOptions(I)V

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mRecipientsText:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0, v2}, Landroid/widget/AutoCompleteTextView;->setHorizontallyScrolling(Z)V

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mRecipientsText:Landroid/widget/AutoCompleteTextView;

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setMaxLines(I)V

    :cond_1
    iput-boolean v2, p0, Lcom/android/phone/photoring/PhotoRingScreen;->bisExcuted:Z

    invoke-direct {p0}, Lcom/android/phone/photoring/PhotoRingScreen;->setPreviewInit()V

    iget-boolean v0, p0, Lcom/android/phone/photoring/PhotoRingScreen;->isAgif:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoRingScreen;->gUtil:Lcom/android/phone/photoring/GifUtil;

    invoke-virtual {v0}, Lcom/android/phone/photoring/GifUtil;->startAnimate()V

    :cond_2
    const-string/jumbo v0, "support_bixby"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Lcom/android/phone/ia/PhotoRingScreenStateListener;

    invoke-direct {v0, p0}, Lcom/android/phone/ia/PhotoRingScreenStateListener;-><init>(Lcom/android/phone/photoring/PhotoRingScreen;)V

    iput-object v0, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mStateListener:Lcom/android/phone/ia/IAInterimListener;

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    iget-object v1, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mStateListener:Lcom/android/phone/ia/IAInterimListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/bixby/BixbyApi;->setInterimStateListener(Lcom/samsung/android/sdk/bixby/BixbyApi$InterimStateListener;)V

    invoke-static {}, Lcom/android/phone/ia/IAUtil;->isIAExecutingState()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string/jumbo v0, "PhoneMCID"

    invoke-static {}, Lcom/android/phone/ia/IAUtil;->getIAExecutingStateId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/android/phone/ia/IAUtil;->isIAExecutingLastState()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "feature_lgt"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string/jumbo v0, "PhoneMCID"

    const-string/jumbo v1, "Carrier"

    const-string/jumbo v2, "Value"

    const-string/jumbo v3, "lgt"

    invoke-static {v0, v1, v2, v3}, Lcom/android/phone/ia/IAUtil;->requestNLG(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_0
    sget-object v0, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-static {v0}, Lcom/android/phone/ia/IAUtil;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :cond_4
    iget-object v0, p0, Lcom/android/phone/photoring/PhotoRingScreen;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    const-string/jumbo v1, "PhoneMCID"

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/bixby/BixbyApi;->logEnterState(Ljava/lang/String;)V

    :cond_5
    return-void

    :cond_6
    const-string/jumbo v0, "feature_ktt"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "PhoneMCID"

    const-string/jumbo v1, "Carrier"

    const-string/jumbo v2, "Value"

    const-string/jumbo v3, "kt"

    invoke-static {v0, v1, v2, v3}, Lcom/android/phone/ia/IAUtil;->requestNLG(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onStop()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    const-string/jumbo v0, "onStop"

    invoke-direct {p0, v0}, Lcom/android/phone/photoring/PhotoRingScreen;->log(Ljava/lang/String;)V

    return-void
.end method

.method public startRecentCallMessageActivity()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/phone/photoring/PhotoringPhraseList;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v1, 0x9

    invoke-virtual {p0, v0, v1}, Lcom/android/phone/photoring/PhotoRingScreen;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
