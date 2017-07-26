.class public Lcom/sec/android/wallpapercropper2/MultiLockCropActivity;
.super Landroid/app/Activity;
.source "MultiLockCropActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "Cropper2_MultiLock"


# instance fields
.field private mActionBarView:Landroid/view/View;

.field private mAdapter:Lcom/sec/android/multilock/ThumbnailListAdapter;

.field private mBlendingEffectView:Landroid/widget/ImageView;

.field private mHorizontalListView:Landroid/widget/SemHorizontalListView;

.field private mImageUriList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private mIsAttachedMobileKeyboard:Z

.field private mIsFromThemeStore:Z

.field private mLoadThumbnailListTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private mPreview:Landroid/widget/ImageView;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mRootView:Landroid/widget/FrameLayout;

.field private mScreenCaptureBitmap:Landroid/graphics/Bitmap;

.field private mScreenCapturePreview:Landroid/widget/ImageView;

.field private mThemeManagerService:Lcom/samsung/android/thememanager/IThemeManager;

.field private mThemeServiceConnection:Landroid/content/ServiceConnection;

.field private mThumbnailInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/multilock/ThumbnailInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mUseLayoutSoftNavigation:Z

.field private mVignettingEffect:Lcom/sec/android/effect/VignettingEffect;


# direct methods
.method static synthetic -get0(Lcom/sec/android/wallpapercropper2/MultiLockCropActivity;)Lcom/sec/android/multilock/ThumbnailListAdapter;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/MultiLockCropActivity;->mAdapter:Lcom/sec/android/multilock/ThumbnailListAdapter;

    return-object v0
.end method

.method static synthetic -get1(Lcom/sec/android/wallpapercropper2/MultiLockCropActivity;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/MultiLockCropActivity;->mImageUriList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get2(Lcom/sec/android/wallpapercropper2/MultiLockCropActivity;)Landroid/app/ProgressDialog;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/MultiLockCropActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic -get3(Lcom/sec/android/wallpapercropper2/MultiLockCropActivity;)Landroid/widget/FrameLayout;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/MultiLockCropActivity;->mRootView:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic -get4(Lcom/sec/android/wallpapercropper2/MultiLockCropActivity;)Lcom/samsung/android/thememanager/IThemeManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/MultiLockCropActivity;->mThemeManagerService:Lcom/samsung/android/thememanager/IThemeManager;

    return-object v0
.end method

.method static synthetic -get5(Lcom/sec/android/wallpapercropper2/MultiLockCropActivity;)Landroid/content/ServiceConnection;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/MultiLockCropActivity;->mThemeServiceConnection:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method static synthetic -get6(Lcom/sec/android/wallpapercropper2/MultiLockCropActivity;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/MultiLockCropActivity;->mThumbnailInfoList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -set0(Lcom/sec/android/wallpapercropper2/MultiLockCropActivity;Lcom/samsung/android/thememanager/IThemeManager;)Lcom/samsung/android/thememanager/IThemeManager;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/wallpapercropper2/MultiLockCropActivity;->mThemeManagerService:Lcom/samsung/android/thememanager/IThemeManager;

    return-object p1
.end method

.method static synthetic -set1(Lcom/sec/android/wallpapercropper2/MultiLockCropActivity;Landroid/content/ServiceConnection;)Landroid/content/ServiceConnection;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/wallpapercropper2/MultiLockCropActivity;->mThemeServiceConnection:Landroid/content/ServiceConnection;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/sec/android/wallpapercropper2/MultiLockCropActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/wallpapercropper2/MultiLockCropActivity;->initialize()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/sec/android/wallpapercropper2/MultiLockCropActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/wallpapercropper2/MultiLockCropActivity;->setMultiLockWallpaper()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/wallpapercropper2/MultiLockCropActivity;->mThumbnailInfoList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/wallpapercropper2/MultiLockCropActivity;->mImageUriList:Ljava/util/ArrayList;

    return-void
.end method

.method private getContentViewId()I
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/wallpapercropper2/MultiLockCropActivity;->mIsAttachedMobileKeyboard:Z

    if-eqz v0, :cond_0

    const v0, 0x7f040015

    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/wallpapercropper2/MultiLockCropActivity;->mUseLayoutSoftNavigation:Z

    if-eqz v0, :cond_1

    const v0, 0x7f040014

    goto :goto_0

    :cond_1
    const v0, 0x7f040013

    goto :goto_0
.end method

.method private initActionBar()V
    .locals 5

    const v4, 0x7f0c0002

    const/high16 v0, 0x7f0c0000

    invoke-virtual {p0, v0}, Lcom/sec/android/wallpapercropper2/MultiLockCropActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/wallpapercropper2/MultiLockCropActivity;->mActionBarView:Landroid/view/View;

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/MultiLockCropActivity;->mActionBarView:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/MultiLockCropActivity;->mActionBarView:Landroid/view/View;

    const v1, 0x7f0c0001

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v2, 0x7f070009

    invoke-static {v0, v2}, Lcom/android/gallery3d/util/Utils;->setSystemFontSize(Landroid/widget/TextView;I)V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/android/gallery3d/util/Utils;->isMassModel()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string/jumbo v3, "es"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "de"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const v2, 0x7f070099

    invoke-static {v0, v2}, Lcom/android/gallery3d/util/Utils;->setSystemFontSize(Landroid/widget/TextView;I)V

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v2, 0x7f06001f

    invoke-virtual {p0, v2}, Lcom/sec/android/wallpapercropper2/MultiLockCropActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    new-instance v0, Lcom/sec/android/wallpapercropper2/MultiLockCropActivity$3;

    invoke-direct {v0, p0}, Lcom/sec/android/wallpapercropper2/MultiLockCropActivity$3;-><init>(Lcom/sec/android/wallpapercropper2/MultiLockCropActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    return-void
.end method

.method private initConnection(Ljava/lang/String;)V
    .locals 4

    new-instance v0, Lcom/sec/android/wallpapercropper2/MultiLockCropActivity$1;

    invoke-direct {v0, p0, p1}, Lcom/sec/android/wallpapercropper2/MultiLockCropActivity$1;-><init>(Lcom/sec/android/wallpapercropper2/MultiLockCropActivity;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/android/wallpapercropper2/MultiLockCropActivity;->mThemeServiceConnection:Landroid/content/ServiceConnection;

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/MultiLockCropActivity;->mThemeManagerService:Lcom/samsung/android/thememanager/IThemeManager;

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/content/ComponentName;

    const-string/jumbo v2, "com.samsung.android.themecenter"

    const-string/jumbo v3, "com.samsung.android.thememanager.ThemeManagerService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/android/wallpapercropper2/MultiLockCropActivity;->mThemeServiceConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/android/wallpapercropper2/MultiLockCropActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    :cond_0
    return-void
.end method

.method private initView()V
    .locals 3

    invoke-virtual {p0}, Lcom/sec/android/wallpapercropper2/MultiLockCropActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f090000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/gallery3d/util/Utils;->isSupportDualScreen()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/sec/android/wallpapercropper2/MultiLockCropActivity;->getContentViewId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/wallpapercropper2/MultiLockCropActivity;->setContentView(I)V

    const v0, 0x7f0c0004

    invoke-virtual {p0, v0}, Lcom/sec/android/wallpapercropper2/MultiLockCropActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/sec/android/wallpapercropper2/MultiLockCropActivity;->mRootView:Landroid/widget/FrameLayout;

    const v0, 0x7f0c0005

    invoke-virtual {p0, v0}, Lcom/sec/android/wallpapercropper2/MultiLockCropActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/wallpapercropper2/MultiLockCropActivity;->mBlendingEffectView:Landroid/widget/ImageView;

    const v0, 0x7f0c0031

    invoke-virtual {p0, v0}, Lcom/sec/android/wallpapercropper2/MultiLockCropActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/wallpapercropper2/MultiLockCropActivity;->mPreview:Landroid/widget/ImageView;

    const v0, 0x7f0c0032

    invoke-virtual {p0, v0}, Lcom/sec/android/wallpapercropper2/MultiLockCropActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/wallpapercropper2/MultiLockCropActivity;->mScreenCapturePreview:Landroid/widget/ImageView;

    new-instance v0, Lcom/sec/android/multilock/ThumbnailListAdapter;

    iget-object v1, p0, Lcom/sec/android/wallpapercropper2/MultiLockCropActivity;->mThumbnailInfoList:Ljava/util/ArrayList;

    const v2, 0x7f04001a

    invoke-direct {v0, p0, v2, v1}, Lcom/sec/android/multilock/ThumbnailListAdapter;-><init>(Landroid/content/Context;ILjava/util/ArrayList;)V

    iput-object v0, p0, Lcom/sec/android/wallpapercropper2/MultiLockCropActivity;->mAdapter:Lcom/sec/android/multilock/ThumbnailListAdapter;

    const v0, 0x7f0c0035

    invoke-virtual {p0, v0}, Lcom/sec/android/wallpapercropper2/MultiLockCropActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SemHorizontalListView;

    iput-object v0, p0, Lcom/sec/android/wallpapercropper2/MultiLockCropActivity;->mHorizontalListView:Landroid/widget/SemHorizontalListView;

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/MultiLockCropActivity;->mHorizontalListView:Landroid/widget/SemHorizontalListView;

    iget-object v1, p0, Lcom/sec/android/wallpapercropper2/MultiLockCropActivity;->mAdapter:Lcom/sec/android/multilock/ThumbnailListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/SemHorizontalListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/MultiLockCropActivity;->mHorizontalListView:Landroid/widget/SemHorizontalListView;

    new-instance v1, Lcom/sec/android/wallpapercropper2/MultiLockCropActivity$2;

    invoke-direct {v1, p0}, Lcom/sec/android/wallpapercropper2/MultiLockCropActivity$2;-><init>(Lcom/sec/android/wallpapercropper2/MultiLockCropActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/SemHorizontalListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/MultiLockCropActivity;->mAdapter:Lcom/sec/android/multilock/ThumbnailListAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/multilock/ThumbnailListAdapter;->setCurrentPosition(I)V

    invoke-virtual {p0}, Lcom/sec/android/wallpapercropper2/MultiLockCropActivity;->initPreviewHomeLockForeground()V

    new-instance v0, Lcom/sec/android/effect/VignettingEffect;

    invoke-direct {v0, p0}, Lcom/sec/android/effect/VignettingEffect;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/wallpapercropper2/MultiLockCropActivity;->mVignettingEffect:Lcom/sec/android/effect/VignettingEffect;

    invoke-direct {p0}, Lcom/sec/android/wallpapercropper2/MultiLockCropActivity;->initActionBar()V

    return-void

    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/wallpapercropper2/MultiLockCropActivity;->setRequestedOrientation(I)V

    goto :goto_0
.end method

.method private initialize()V
    .locals 3

    const/4 v0, 0x0

    invoke-static {v0, v0}, Lcom/android/gallery3d/util/Utils;->getRequestPermissions(ZZ)[Ljava/lang/String;

    move-result-object v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_0

    invoke-static {p0, v0}, Lcom/android/gallery3d/util/Utils;->isRequiredPermissionEnabled(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-static {p0}, Lcom/android/gallery3d/util/Utils;->initializeScreenResolution(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/android/gallery3d/util/Utils;->isAttachedMobileKeyboard(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/wallpapercropper2/MultiLockCropActivity;->mIsAttachedMobileKeyboard:Z

    invoke-static {}, Lcom/android/gallery3d/util/Utils;->useLayoutSoftNavigation()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/wallpapercropper2/MultiLockCropActivity;->mUseLayoutSoftNavigation:Z

    invoke-direct {p0}, Lcom/sec/android/wallpapercropper2/MultiLockCropActivity;->initView()V

    invoke-direct {p0}, Lcom/sec/android/wallpapercropper2/MultiLockCropActivity;->loadThumbnailList()V

    return-void

    :cond_1
    invoke-virtual {p0, v0}, Lcom/sec/android/wallpapercropper2/MultiLockCropActivity;->startPermissionRequestActivity([Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/android/wallpapercropper2/MultiLockCropActivity;->finish()V

    return-void
.end method

.method private loadThumbnailList()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Landroid/app/ProgressDialog;

    const v1, 0x7f0b0006

    invoke-direct {v0, p0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/sec/android/wallpapercropper2/MultiLockCropActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/MultiLockCropActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/MultiLockCropActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/MultiLockCropActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/MultiLockCropActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p0}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/MultiLockCropActivity;->mRootView:Landroid/widget/FrameLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    new-instance v0, Lcom/sec/android/wallpapercropper2/MultiLockCropActivity$4;

    invoke-direct {v0, p0}, Lcom/sec/android/wallpapercropper2/MultiLockCropActivity$4;-><init>(Lcom/sec/android/wallpapercropper2/MultiLockCropActivity;)V

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/sec/android/wallpapercropper2/MultiLockCropActivity$4;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/wallpapercropper2/MultiLockCropActivity;->mLoadThumbnailListTask:Landroid/os/AsyncTask;

    return-void
.end method

.method private setMultiLockWallpaper()V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/content/ComponentName;

    const-string/jumbo v2, "com.samsung.android.keyguardwallpaperupdator"

    const-string/jumbo v3, "com.samsung.android.keyguardwallpaperupdator.ui.KeyguardPhotoSlideMainActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string/jumbo v1, "imageUriList"

    iget-object v2, p0, Lcom/sec/android/wallpapercropper2/MultiLockCropActivity;->mImageUriList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string/jumbo v1, "Cropper2_MultiLock"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setMultiLockWallpaper mImageUriList size = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/wallpapercropper2/MultiLockCropActivity;->mImageUriList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/sec/android/wallpapercropper2/MultiLockCropActivity;->startActivity(Landroid/content/Intent;)V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/sec/android/wallpapercropper2/MultiLockCropActivity;->mImageUriList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const v1, 0x7f060026

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/wallpapercropper2/MultiLockCropActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/wallpapercropper2/MultiLockCropActivity;->setResult(I)V

    invoke-virtual {p0}, Lcom/sec/android/wallpapercropper2/MultiLockCropActivity;->finish()V

    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "Cropper2_MultiLock"

    const-string/jumbo v2, "Can\'t start KeyguardWallpaperUpdator to set multi lock"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private startPreviewChangeAnim(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
    .locals 4

    const/4 v3, 0x1

    const-string/jumbo v0, "Cropper2_MultiLock"

    const-string/jumbo v1, "startPreviewChangeAnim start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_1

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    aput-object p2, v1, v3

    new-instance v0, Landroid/graphics/drawable/TransitionDrawable;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/TransitionDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/TransitionDrawable;->setCrossFadeEnabled(Z)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/16 v1, 0x12c

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    const-string/jumbo v0, "Cropper2_MultiLock"

    const-string/jumbo v1, "startPreviewChangeAnim end"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public getWallpaperType()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public initPreviewHomeLockForeground()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/MultiLockCropActivity;->mScreenCapturePreview:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/MultiLockCropActivity;->mScreenCaptureBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/MultiLockCropActivity;->mScreenCaptureBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/wallpapercropper2/MultiLockCropActivity;->getWallpaperType()I

    move-result v0

    iget-boolean v1, p0, Lcom/sec/android/wallpapercropper2/MultiLockCropActivity;->mIsAttachedMobileKeyboard:Z

    invoke-static {p0, v0, v2, v2, v1}, Lcom/sec/android/wallpapercropper2/ScreenCaptureHelper;->getScreenCaptureBitmap(Landroid/content/Context;IZZZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/wallpapercropper2/MultiLockCropActivity;->mScreenCaptureBitmap:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/MultiLockCropActivity;->mScreenCaptureBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/MultiLockCropActivity;->mScreenCapturePreview:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/android/wallpapercropper2/MultiLockCropActivity;->mScreenCaptureBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_2
    return-void
.end method

.method public isFromThemeStore()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/wallpapercropper2/MultiLockCropActivity;->mIsFromThemeStore:Z

    return v0
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/wallpapercropper2/MultiLockCropActivity;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string/jumbo v0, "Cropper2_MultiLock"

    const-string/jumbo v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/wallpapercropper2/MultiLockCropActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/wallpapercropper2/MultiLockCropActivity;->finish()V

    return-void

    :cond_0
    const-string/jumbo v1, "from"

    const-string/jumbo v2, "other"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "themestore"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/wallpapercropper2/MultiLockCropActivity;->mIsFromThemeStore:Z

    :cond_1
    const-string/jumbo v1, "packageName"

    const-string/jumbo v2, "other"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    const-string/jumbo v0, "Cropper2_MultiLock"

    const-string/jumbo v1, "packageName is empty!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/wallpapercropper2/MultiLockCropActivity;->finish()V

    return-void

    :cond_3
    const-string/jumbo v1, "Cropper2_MultiLock"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "packageName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v0}, Lcom/sec/android/wallpapercropper2/MultiLockCropActivity;->initConnection(Ljava/lang/String;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 3

    const/4 v2, 0x1

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    const-string/jumbo v0, "Cropper2_MultiLock"

    const-string/jumbo v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/MultiLockCropActivity;->mLoadThumbnailListTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/MultiLockCropActivity;->mLoadThumbnailListTask:Landroid/os/AsyncTask;

    invoke-virtual {v0, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    :cond_0
    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/MultiLockCropActivity;->mThumbnailInfoList:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/multilock/ThumbnailInfo;

    invoke-virtual {v0, v2}, Lcom/sec/android/multilock/ThumbnailInfo;->recycleData(Z)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/MultiLockCropActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/MultiLockCropActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/MultiLockCropActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_2
    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/MultiLockCropActivity;->mThemeServiceConnection:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/MultiLockCropActivity;->mThemeServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/sec/android/wallpapercropper2/MultiLockCropActivity;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_3
    return-void
.end method

.method protected onResume()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const-string/jumbo v0, "Cropper2_MultiLock"

    const-string/jumbo v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public scaleView(Landroid/view/View;FF)V
    .locals 9

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v5, 0x1

    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const v1, 0x3e99999a    # 0.3f

    const/high16 v2, 0x3f800000    # 1.0f

    move v3, p2

    move v4, p3

    move v7, v5

    move v8, v6

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    invoke-virtual {v0, v5}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public setWallpaperPreview(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 3

    const-string/jumbo v0, "Cropper2_MultiLock"

    const-string/jumbo v1, "setWallpaperPreview start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    :goto_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/MultiLockCropActivity;->mPreview:Landroid/widget/ImageView;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/sec/android/wallpapercropper2/MultiLockCropActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-direct {p0, v0, v1}, Lcom/sec/android/wallpapercropper2/MultiLockCropActivity;->startPreviewChangeAnim(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/MultiLockCropActivity;->mBlendingEffectView:Landroid/widget/ImageView;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/sec/android/wallpapercropper2/MultiLockCropActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-direct {p0, v0, v1}, Lcom/sec/android/wallpapercropper2/MultiLockCropActivity;->startPreviewChangeAnim(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/MultiLockCropActivity;->mVignettingEffect:Lcom/sec/android/effect/VignettingEffect;

    iget-object v1, p0, Lcom/sec/android/wallpapercropper2/MultiLockCropActivity;->mBlendingEffectView:Landroid/widget/ImageView;

    invoke-virtual {v0, p2, v1, p0}, Lcom/sec/android/effect/VignettingEffect;->applyBlendedFilter(Landroid/graphics/Bitmap;Landroid/view/View;Landroid/content/Context;)V

    goto :goto_1
.end method

.method public startPermissionRequestActivity([Ljava/lang/String;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/gallery3d/permissions/PermissionsRequestActivityForCropper2;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "previous_intent"

    invoke-virtual {p0}, Lcom/sec/android/wallpapercropper2/MultiLockCropActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string/jumbo v1, "permission_list"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v1, 0x2000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/sec/android/wallpapercropper2/MultiLockCropActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
