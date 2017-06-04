.class public Lcom/sec/samsung/gallery/controller/ImageEditCmd;
.super Lorg/puremvc/java/multicore/patterns/command/SimpleCommand;
.source "ImageEditCmd.java"

# interfaces
.implements Ljava/util/Observer;
.implements Lorg/puremvc/java/multicore/interfaces/ICommand;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/samsung/gallery/controller/ImageEditCmd$EditPackageInfo;
    }
.end annotation


# static fields
.field private static final MSG_DIALOG_CANCEL_SELECTED:I = 0x1

.field private static final MSG_DIALOG_SHOW_SELECTED:I = 0x0

.field private static final PHOTO_EDITOR_CLASS_NAME:Ljava/lang/String; = "com.sec.android.mimage.photoretouching.PhotoRetouching"

.field public static final PHOTO_EDITOR_PACKAGE_NAME:Ljava/lang/String; = "com.sec.android.mimage.photoretouching"

.field private static final PS_TOUCH_PACKAGE_NAME:Ljava/lang/String; = "air.com.adobe.pstouch.oem1"

.field private static final TITLE_OF_DIALOG:I = 0x7f0a014e


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEditAppChoiceDialog:Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;

.field private mEditDialog:Lcom/sec/samsung/gallery/view/common/EditDialog;

.field private mGroupId:J

.field private final mHandler:Landroid/os/Handler;

.field private mMimeType:Ljava/lang/String;

.field private mNeedEditorResult:Z

.field private mSelectedItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lorg/puremvc/java/multicore/patterns/command/SimpleCommand;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/samsung/gallery/controller/ImageEditCmd;->mMimeType:Ljava/lang/String;

    new-instance v0, Lcom/sec/samsung/gallery/controller/ImageEditCmd$2;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sec/samsung/gallery/controller/ImageEditCmd$2;-><init>(Lcom/sec/samsung/gallery/controller/ImageEditCmd;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/controller/ImageEditCmd;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/samsung/gallery/controller/ImageEditCmd;)Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/ImageEditCmd;->mEditAppChoiceDialog:Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/samsung/gallery/controller/ImageEditCmd;)Ljava/util/ArrayList;
    .locals 1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/ImageEditCmd;->createAppList()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/samsung/gallery/controller/ImageEditCmd;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/ImageEditCmd;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/samsung/gallery/controller/ImageEditCmd;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/controller/ImageEditCmd;->showAppChoiceDialog(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$400(Lcom/sec/samsung/gallery/controller/ImageEditCmd;Lcom/sec/samsung/gallery/controller/ImageEditCmd$EditPackageInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/controller/ImageEditCmd;->startShareApp(Lcom/sec/samsung/gallery/controller/ImageEditCmd$EditPackageInfo;)V

    return-void
.end method

.method static synthetic access$500(Lcom/sec/samsung/gallery/controller/ImageEditCmd;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/ImageEditCmd;->dismissDialog()V

    return-void
.end method

.method private createAppList()Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/samsung/gallery/controller/ImageEditCmd$EditPackageInfo;",
            ">;"
        }
    .end annotation

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/ImageEditCmd;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/gallery3d/util/ImageEditorUtil;->isSamsungAppsAvailable(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/ImageEditCmd;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/gallery3d/util/ImageEditorUtil;->isPhotoRetouchingAvailable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    new-instance v0, Lcom/sec/samsung/gallery/controller/ImageEditCmd$EditPackageInfo;

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/ImageEditCmd;->mContext:Landroid/content/Context;

    const v2, 0x7f0a032c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "com.sec.android.mimage.photoretouching"

    const-string/jumbo v4, "com.sec.android.mimage.photoretouching.PhotoRetouching"

    const-string/jumbo v1, "com.sec.android.mimage.photoretouching"

    invoke-direct {p0, v1}, Lcom/sec/samsung/gallery/controller/ImageEditCmd;->queryResolveInfo(Ljava/lang/String;)Landroid/content/pm/ResolveInfo;

    move-result-object v5

    const/4 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/sec/samsung/gallery/controller/ImageEditCmd$EditPackageInfo;-><init>(Lcom/sec/samsung/gallery/controller/ImageEditCmd;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/ResolveInfo;Lcom/sec/samsung/gallery/controller/ImageEditCmd$1;)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object v7
.end method

.method private dismissDialog()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/ImageEditCmd;->mEditAppChoiceDialog:Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/ImageEditCmd;->mEditAppChoiceDialog:Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;->dismissDialog()V

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/ImageEditCmd;->mEditDialog:Lcom/sec/samsung/gallery/view/common/EditDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/ImageEditCmd;->mEditDialog:Lcom/sec/samsung/gallery/view/common/EditDialog;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/common/EditDialog;->dismissDialog()V

    :cond_1
    return-void
.end method

.method private queryResolveInfo(Ljava/lang/String;)Landroid/content/pm/ResolveInfo;
    .locals 6

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.EDIT"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "image/*"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v4, p0, Lcom/sec/samsung/gallery/controller/ImageEditCmd;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v2, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    const/4 v0, 0x0

    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_1

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    iget-object v1, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    :goto_1
    return-object v4

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private showAppChoiceDialog(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/samsung/gallery/controller/ImageEditCmd$EditPackageInfo;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/sec/samsung/gallery/core/Event$Builder;->create()Lcom/sec/samsung/gallery/core/Event;

    move-result-object v0

    sget v1, Lcom/sec/samsung/gallery/core/Event;->EVENT_START_SELECTED_APP:I

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/core/Event;->setType(I)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v3

    new-instance v5, Lcom/sec/samsung/gallery/controller/ImageEditCmd$1;

    invoke-direct {v5, p0, p1}, Lcom/sec/samsung/gallery/controller/ImageEditCmd$1;-><init>(Lcom/sec/samsung/gallery/controller/ImageEditCmd;Ljava/util/ArrayList;)V

    new-instance v0, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/ImageEditCmd;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v4, 0x1

    invoke-direct/range {v0 .. v5}, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/sec/samsung/gallery/core/Event;ZLcom/sec/samsung/gallery/view/common/AppChoiceDialog$ItemInfoAdapter;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/controller/ImageEditCmd;->mEditAppChoiceDialog:Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/ImageEditCmd;->mEditAppChoiceDialog:Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;

    const v1, 0x7f0a014e

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;->setTitle(I)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/ImageEditCmd;->mEditAppChoiceDialog:Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;

    invoke-virtual {v0, p0}, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;->addObserver(Ljava/util/Observer;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/ImageEditCmd;->mEditAppChoiceDialog:Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;->showDialog()V

    return-void
.end method

.method private showPhotoEditorDownloadDialog()V
    .locals 2

    new-instance v0, Lcom/sec/samsung/gallery/view/common/EditDialog;

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/ImageEditCmd;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sec/samsung/gallery/view/common/EditDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/controller/ImageEditCmd;->mEditDialog:Lcom/sec/samsung/gallery/view/common/EditDialog;

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/ImageEditCmd;->mEditDialog:Lcom/sec/samsung/gallery/view/common/EditDialog;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/common/EditDialog;->showDialog()V

    return-void
.end method

.method private startShareApp(Lcom/sec/samsung/gallery/controller/ImageEditCmd$EditPackageInfo;)V
    .locals 9

    const/4 v8, 0x0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    new-instance v3, Landroid/content/ComponentName;

    invoke-virtual {p1}, Lcom/sec/samsung/gallery/controller/ImageEditCmd$EditPackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/sec/samsung/gallery/controller/ImageEditCmd$EditPackageInfo;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string/jumbo v3, "air.com.adobe.pstouch.oem1"

    invoke-virtual {p1}, Lcom/sec/samsung/gallery/controller/ImageEditCmd$EditPackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/ImageEditCmd;->mUri:Landroid/net/Uri;

    iget-object v4, p0, Lcom/sec/samsung/gallery/controller/ImageEditCmd;->mMimeType:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.EDIT"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    :goto_0
    const-string/jumbo v3, "need_result"

    iget-boolean v4, p0, Lcom/sec/samsung/gallery/controller/ImageEditCmd;->mNeedEditorResult:Z

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v3, 0x10000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/ImageEditCmd;->mContext:Landroid/content/Context;

    check-cast v3, Landroid/app/Activity;

    invoke-virtual {v3, v8, v8}, Landroid/app/Activity;->overridePendingTransition(II)V

    :try_start_0
    sget-object v3, Lcom/sec/samsung/gallery/features/FeatureNames;->ShowEditedImageFromPhotoEditor:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v3}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-boolean v3, p0, Lcom/sec/samsung/gallery/controller/ImageEditCmd;->mNeedEditorResult:Z

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/ImageEditCmd;->mContext:Landroid/content/Context;

    check-cast v3, Landroid/app/Activity;

    const/16 v4, 0x30e

    invoke-virtual {v3, v1, v4}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/ImageEditCmd;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v3

    const-string/jumbo v4, "EXIT_SELECTION_MODE"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_2
    const-string/jumbo v3, "android.intent.action.EDIT"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/ImageEditCmd;->mUri:Landroid/net/Uri;

    const-string/jumbo v4, "image/*"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/ImageEditCmd;->mSelectedItemList:Ljava/util/ArrayList;

    if-eqz v3, :cond_3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v3, "selectedItems"

    iget-object v4, p0, Lcom/sec/samsung/gallery/controller/ImageEditCmd;->mSelectedItemList:Ljava/util/ArrayList;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const-string/jumbo v3, "selectedCount"

    iget-object v4, p0, Lcom/sec/samsung/gallery/controller/ImageEditCmd;->mSelectedItemList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_3
    iget-wide v4, p0, Lcom/sec/samsung/gallery/controller/ImageEditCmd;->mGroupId:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-lez v3, :cond_0

    const-string/jumbo v3, "group_id"

    iget-wide v4, p0, Lcom/sec/samsung/gallery/controller/ImageEditCmd;->mGroupId:J

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    goto :goto_0

    :cond_4
    :try_start_1
    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/ImageEditCmd;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    const-string/jumbo v3, "com.sec.android.mimage.photoretouching"

    invoke-virtual {p1}, Lcom/sec/samsung/gallery/controller/ImageEditCmd$EditPackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/ImageEditCmd;->showPhotoEditorDownloadDialog()V

    goto :goto_1
.end method


# virtual methods
.method public execute(Lorg/puremvc/java/multicore/interfaces/INotification;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-interface {p1}, Lorg/puremvc/java/multicore/interfaces/INotification;->getBody()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    move-object v0, v2

    check-cast v0, [Ljava/lang/Object;

    aget-object v2, v0, v4

    check-cast v2, Landroid/content/Context;

    iput-object v2, p0, Lcom/sec/samsung/gallery/controller/ImageEditCmd;->mContext:Landroid/content/Context;

    aget-object v2, v0, v5

    check-cast v2, Ljava/util/ArrayList;

    iput-object v2, p0, Lcom/sec/samsung/gallery/controller/ImageEditCmd;->mSelectedItemList:Ljava/util/ArrayList;

    const/4 v2, 0x2

    aget-object v2, v0, v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/sec/samsung/gallery/controller/ImageEditCmd;->mMimeType:Ljava/lang/String;

    const/4 v2, 0x3

    aget-object v2, v0, v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x4

    aget-object v2, v0, v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/sec/samsung/gallery/controller/ImageEditCmd;->mGroupId:J

    const/4 v2, 0x5

    aget-object v2, v0, v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/controller/ImageEditCmd;->mNeedEditorResult:Z

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/ImageEditCmd;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/ImageEditCmd;->mSelectedItemList:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    iput-object v2, p0, Lcom/sec/samsung/gallery/controller/ImageEditCmd;->mUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/ImageEditCmd;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 4

    move-object v0, p2

    check-cast v0, Lcom/sec/samsung/gallery/core/Event;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/core/Event;->getType()I

    move-result v2

    sget v3, Lcom/sec/samsung/gallery/core/Event;->EVENT_START_SELECTED_APP:I

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/ImageEditCmd;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v2

    const-string/jumbo v3, "EXIT_SELECTION_MODE"

    invoke-virtual {v2, v3}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/core/Event;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/samsung/gallery/controller/ImageEditCmd$EditPackageInfo;

    invoke-direct {p0, v1}, Lcom/sec/samsung/gallery/controller/ImageEditCmd;->startShareApp(Lcom/sec/samsung/gallery/controller/ImageEditCmd$EditPackageInfo;)V

    :cond_0
    return-void
.end method
