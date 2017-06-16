.class public Lcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment;
.super Landroid/app/Fragment;
.source "DecorationAttachFragment.java"

# interfaces
.implements Lcom/samsung/android/sdk/rcl/RclExpansionFragment$OnExpansionStatusListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment$OnDecorationAttachInterfaceListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_MAX_HEIGHT:I = 0x215

.field private static final DEFAULT_MIN_HEIGHT:I = 0x117

.field private static final KEY_CURRENT_DECO_TYPE:Ljava/lang/String; = "current_deco_type"

.field private static final KEY_FULL_MODE:Ljava/lang/String; = "full_mode"

.field private static final KEY_MAX_HEIGHT:Ljava/lang/String; = "max_height"

.field private static final KEY_MIN_HEIGHT:Ljava/lang/String; = "min_height"

.field private static final LOC_PERMISSION_REQUEST:I = 0x6f

.field private static final TAG:Ljava/lang/String;

.field public static currentDecorationType:I


# instance fields
.field private dialogPermission:Landroid/app/AlertDialog;

.field private isPermissionGranted:Z

.field private labelFragment:Lcom/sec/android/mimage/photoretouching/Decoration/LabelFragment;

.field public mAttachSheetMaxHeight:I

.field public mAttachSheetMinHeight:I

.field private mAttachViewLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

.field public mContext:Landroid/content/Context;

.field public mCurrentOrientation:I

.field public mInitContainer:Z

.field public mIsFullMode:Z

.field public mOnAttachInterfaceListener:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment$OnDecorationAttachInterfaceListener;

.field private mRoot:Landroid/widget/FrameLayout;

.field private stickerFragment:Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method private attachStickerFragment(Z)V
    .locals 7

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    const-string v5, "StickerFragment"

    invoke-virtual {v4, v5}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v4

    check-cast v4, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;

    iput-object v4, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment;->stickerFragment:Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment;->stickerFragment:Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;

    if-nez v4, :cond_0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;->newInstance(I)Landroid/app/Fragment;

    move-result-object v4

    check-cast v4, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;

    iput-object v4, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment;->stickerFragment:Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment;->stickerFragment:Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;

    iget-boolean v5, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment;->isPermissionGranted:Z

    invoke-virtual {v4, v5}, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;->setLocationPermission(Z)V

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment;->stickerFragment:Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;

    sget-object v5, Lcom/sec/android/mimage/photoretouching/Decoration/StickerConstants;->requiredStickerPages_C9:[I

    sget-object v6, Lcom/sec/android/mimage/photoretouching/Decoration/StickerConstants;->requiredTabs_C9:[I

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;->setRequiredPagesAndTabs([I[I)V

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment;->stickerFragment:Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment;->mOnAttachInterfaceListener:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment$OnDecorationAttachInterfaceListener;

    invoke-virtual {v4, v5}, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;->setOnDecorationAttachInterfaceListener(Lcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment$OnDecorationAttachInterfaceListener;)V

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment;->stickerFragment:Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;

    iget v5, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment;->mAttachSheetMinHeight:I

    iget v6, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment;->mAttachSheetMaxHeight:I

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;->updateExpansionWH(II)V

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment;->stickerFragment:Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;

    invoke-virtual {v4, v3}, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;->setArguments(Landroid/os/Bundle;)V

    const v4, 0x7f0e0204

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment;->stickerFragment:Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;

    invoke-virtual {v1, v4, v5}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    if-eqz p1, :cond_1

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    goto :goto_0
.end method

.method private checkChangeStatus(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment;->mIsFullMode:Z

    if-eq p1, v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment;->changeMode(Z)V

    :cond_0
    return-void
.end method

.method private displayCustomDialogue()V
    .locals 4

    new-instance v1, Lcom/sec/android/mimage/photoretouching/util/CommonUtil;

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/sec/android/mimage/photoretouching/util/CommonUtil;-><init>(Landroid/content/Context;Landroid/app/Activity;)V

    const-string v2, "android.permission-group.LOCATION"

    invoke-virtual {v1, v2}, Lcom/sec/android/mimage/photoretouching/util/CommonUtil;->populateDialogue(Ljava/lang/String;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f07029d

    new-instance v3, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment$1;

    invoke-direct {v3, p0}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment$1;-><init>(Lcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v2, 0x7f070092

    new-instance v3, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment$2;

    invoke-direct {v3, p0}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment$2;-><init>(Lcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment;->dialogPermission:Landroid/app/AlertDialog;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment;->dialogPermission:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private initSubDecorationFragment(I)V
    .locals 7

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    const-string v5, "LabelFragment"

    invoke-virtual {v4, v5}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v4

    check-cast v4, Lcom/sec/android/mimage/photoretouching/Decoration/LabelFragment;

    iput-object v4, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment;->labelFragment:Lcom/sec/android/mimage/photoretouching/Decoration/LabelFragment;

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment;->labelFragment:Lcom/sec/android/mimage/photoretouching/Decoration/LabelFragment;

    if-nez v4, :cond_0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelFragment;->newInstance(Landroid/content/Context;I)Landroid/app/Fragment;

    move-result-object v4

    check-cast v4, Lcom/sec/android/mimage/photoretouching/Decoration/LabelFragment;

    iput-object v4, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment;->labelFragment:Lcom/sec/android/mimage/photoretouching/Decoration/LabelFragment;

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment;->labelFragment:Lcom/sec/android/mimage/photoretouching/Decoration/LabelFragment;

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment;->mOnAttachInterfaceListener:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment$OnDecorationAttachInterfaceListener;

    invoke-virtual {v4, v5}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelFragment;->setOnDecorationAttachInterfaceListener(Lcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment$OnDecorationAttachInterfaceListener;)V

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment;->labelFragment:Lcom/sec/android/mimage/photoretouching/Decoration/LabelFragment;

    iget v5, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment;->mAttachSheetMinHeight:I

    iget v6, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment;->mAttachSheetMaxHeight:I

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelFragment;->updateExpansionWH(II)V

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment;->labelFragment:Lcom/sec/android/mimage/photoretouching/Decoration/LabelFragment;

    invoke-virtual {v4, v2}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelFragment;->setArguments(Landroid/os/Bundle;)V

    const v4, 0x7f0e0204

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment;->labelFragment:Lcom/sec/android/mimage/photoretouching/Decoration/LabelFragment;

    invoke-virtual {v1, v4, v5}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    goto :goto_0

    :pswitch_1
    sget-object v4, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v5, "M"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x17

    if-lt v4, v5, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment;->launchPermissionDialogue()V

    :goto_1
    iget-boolean v4, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment;->isPermissionGranted:Z

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment;->attachStickerFragment(Z)V

    goto :goto_0

    :cond_2
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment;->isPermissionGranted:Z

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x80002
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static newInstance(I)Lcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment;
    .locals 4

    sget-object v2, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment;->TAG:Ljava/lang/String;

    const-string v3, "DecorationAttachFragment newInstance()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sput p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment;->currentDecorationType:I

    new-instance v1, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment;

    invoke-direct {v1}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "current_deco_type"

    sget v3, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment;->currentDecorationType:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v1, v0}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v1
.end method


# virtual methods
.method public changeMode(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment;->mIsFullMode:Z

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment;->stickerFragment:Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment;->stickerFragment:Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;

    iget-boolean v1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment;->mIsFullMode:Z

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;->setMode(Z)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment;->labelFragment:Lcom/sec/android/mimage/photoretouching/Decoration/LabelFragment;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment;->labelFragment:Lcom/sec/android/mimage/photoretouching/Decoration/LabelFragment;

    iget-boolean v1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment;->mIsFullMode:Z

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelFragment;->setMode(Z)V

    :cond_1
    return-void
.end method

.method public decideAttachSheetMoveArea(Landroid/view/View;)V
    .locals 3

    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment;->mIsFullMode:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment;->stickerFragment:Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment;->TAG:Ljava/lang/String;

    const-string v1, "decideAttachSheetMoveArea() - sticker"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment;->stickerFragment:Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment;->mAttachSheetMinHeight:I

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment;->mAttachSheetMaxHeight:I

    invoke-virtual {v0, p1, v1, v2}, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;->enableExpansion(Landroid/view/View;II)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment;->labelFragment:Lcom/sec/android/mimage/photoretouching/Decoration/LabelFragment;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment;->TAG:Ljava/lang/String;

    const-string v1, "decideAttachSheetMoveArea() - label"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment;->labelFragment:Lcom/sec/android/mimage/photoretouching/Decoration/LabelFragment;

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment;->mAttachSheetMinHeight:I

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment;->mAttachSheetMaxHeight:I

    invoke-virtual {v0, p1, v1, v2}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelFragment;->enableExpansion(Landroid/view/View;II)V

    goto :goto_0
.end method

.method public enableFragmentExpansion(Landroid/app/Fragment;Z)Z
    .locals 1

    instance-of v0, p1, Lcom/samsung/android/sdk/rcl/RclExpansionFragment;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/samsung/android/sdk/rcl/RclExpansionFragment;

    invoke-virtual {p1, p2}, Lcom/samsung/android/sdk/rcl/RclExpansionFragment;->setExpansion(Z)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDensity()F
    .locals 2

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    return v1
.end method

.method public isLocationPermissionGranted(Landroid/content/Context;)Z
    .locals 4

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v1, :cond_0

    if-nez v0, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public launchPermissionDialogue()V
    .locals 7

    const/16 v6, 0x6f

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-eqz v1, :cond_0

    iput-boolean v5, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment;->isPermissionGranted:Z

    const-string v3, "android.permission.ACCESS_FINE_LOCATION"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    if-eqz v0, :cond_1

    iput-boolean v5, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment;->isPermissionGranted:Z

    const-string v3, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    if-nez v1, :cond_2

    if-nez v0, :cond_2

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment;->isPermissionGranted:Z

    :cond_2
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->hasPermissionDialogShownDE(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_6

    const-string v3, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {p0, v3}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {p0, v3}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    invoke-virtual {p0, v3, v6}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment;->requestPermissions([Ljava/lang/String;I)V

    :cond_4
    :goto_0
    return-void

    :cond_5
    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment;->displayCustomDialogue()V

    goto :goto_0

    :cond_6
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    invoke-virtual {p0, v3, v6}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment;->requestPermissions([Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment;->mCurrentOrientation:I

    const v0, 0x438b8000    # 279.0f

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment;->getDensity()F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment;->mAttachSheetMinHeight:I

    const v0, 0x44054000    # 533.0f

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment;->getDensity()F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment;->mAttachSheetMaxHeight:I

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment;->mAttachSheetMinHeight:I

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment;->updateRootParams(I)V

    sget v0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment;->currentDecorationType:I

    invoke-direct {p0, v0}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment;->initSubDecorationFragment(I)V

    return-void
.end method

.method public onClose(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment;->mOnAttachInterfaceListener:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment$OnDecorationAttachInterfaceListener;

    invoke-interface {v0}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment$OnDecorationAttachInterfaceListener;->onDecorationFragmentRemoved()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    sget-object v0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment;->TAG:Ljava/lang/String;

    const-string v1, "onCreate()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const/4 v2, 0x0

    sget-object v0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment;->TAG:Ljava/lang/String;

    const-string v1, "onCreateView()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f030061

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment;->mRoot:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment;->mRoot:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x42c80000    # 100.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alphaBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment;->mRoot:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment;->mRoot:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment;->mRoot:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViewsInLayout()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment;->mRoot:Landroid/widget/FrameLayout;

    :cond_0
    return-void
.end method

.method public onDestroyView()V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    sget-object v1, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment;->TAG:Ljava/lang/String;

    const-string v2, "onDestroyView()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment;->stickerFragment:Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment;->stickerFragment:Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;

    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment;->stickerFragment:Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;

    :cond_0
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment;->labelFragment:Lcom/sec/android/mimage/photoretouching/Decoration/LabelFragment;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment;->labelFragment:Lcom/sec/android/mimage/photoretouching/Decoration/LabelFragment;

    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment;->labelFragment:Lcom/sec/android/mimage/photoretouching/Decoration/LabelFragment;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment;->mRoot:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment;->mRoot:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->removeAllViewsInLayout()V

    iput-object v3, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment;->mRoot:Landroid/widget/FrameLayout;

    :cond_2
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onFinish(Ljava/lang/Object;Z)V
    .locals 3

    sget-object v0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFinish().."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p2}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment;->checkChangeStatus(Z)V

    return-void
.end method

.method public onProgress(Ljava/lang/Object;I)V
    .locals 0

    return-void
.end method

.method public onRequest(Ljava/lang/Object;Z)V
    .locals 0

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 4

    const/4 v3, 0x1

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_1
    array-length v2, p2

    if-ge v0, v2, :cond_1

    array-length v2, p3

    if-le v2, v0, :cond_0

    aget v2, p3, v0

    if-nez v2, :cond_0

    const/4 v1, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :cond_1
    if-eqz v1, :cond_2

    iput-boolean v3, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment;->isPermissionGranted:Z

    :goto_2
    invoke-direct {p0, v3}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment;->attachStickerFragment(Z)V

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment;->isPermissionGranted:Z

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x6f
        :pswitch_0
    .end packed-switch
.end method

.method public onResume()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment;->dialogPermission:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment;->dialogPermission:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment;->isLocationPermissionGranted(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment;->dialogPermission:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment;->isPermissionGranted:Z

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment;->attachStickerFragment(Z)V

    :cond_0
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    sget-object v0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment;->TAG:Ljava/lang/String;

    const-string v1, "onSaveInstanceState"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "min_height"

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment;->mAttachSheetMinHeight:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "max_height"

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment;->mAttachSheetMaxHeight:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "full_mode"

    iget-boolean v1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment;->mIsFullMode:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "current_deco_type"

    sget v1, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment;->currentDecorationType:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onStart(Ljava/lang/Object;Z)V
    .locals 3

    sget-object v0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStart().."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p2}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment;->checkChangeStatus(Z)V

    return-void
.end method

.method public setOnDecorationAttachInterfaceListener(Lcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment$OnDecorationAttachInterfaceListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment;->mOnAttachInterfaceListener:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment$OnDecorationAttachInterfaceListener;

    return-void
.end method

.method public updateRootParams(I)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment;->mRoot:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment;->TAG:Ljava/lang/String;

    const-string v1, "update root params..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment;->mRoot:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment;->mAttachViewLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment;->mAttachViewLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    const/16 v1, 0x50

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment;->mRoot:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment;->mAttachViewLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment;->mRoot:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->requestLayout()V

    :cond_0
    return-void
.end method
