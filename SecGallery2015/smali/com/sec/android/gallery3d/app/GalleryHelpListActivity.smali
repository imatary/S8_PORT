.class public Lcom/sec/android/gallery3d/app/GalleryHelpListActivity;
.super Landroid/app/Activity;
.source "GalleryHelpListActivity.java"

# interfaces
.implements Lcom/samsung/android/devicecog/gallery/DCCommandExecutable;
.implements Ljava/util/Observer;


# static fields
.field private static final DELETE_PICTURE:Ljava/lang/String; = "com.samsung.gallery.help.DELETE_PICTURE"

.field private static final SHARING_PICTURE:Ljava/lang/String; = "com.samsung.gallery.help.SHARING_PICTURE"

.field private static final TAG:Ljava/lang/String; = "GalleryHelpListActivity"

.field private static final VIEWING_ALBUM:Ljava/lang/String; = "com.samsung.gallery.help.VIEWING_ALBUM"

.field private static final VIEWING_PICTURE:Ljava/lang/String; = "com.samsung.gallery.help.VIEWING_PICTURE"


# instance fields
.field private mActionBar:Landroid/app/ActionBar;

.field private mDCHandler:Lcom/samsung/android/devicecog/gallery/viewstatehandler/AbstractDCHandler;

.field private mDeviceCogActivityListener:Lcom/samsung/android/devicecog/DeviceCogActivityListener;

.field private final mHelpItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private final mIsGraceUI:Z

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseGraceHelpUI:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/app/GalleryHelpListActivity;->mIsGraceUI:Z

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/sec/android/gallery3d/app/GalleryHelpListActivity;->title:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/gallery3d/app/GalleryHelpListActivity;->mActionBar:Landroid/app/ActionBar;

    new-instance v0, Lcom/sec/android/gallery3d/app/GalleryHelpListActivity$1;

    invoke-direct {v0, p0}, Lcom/sec/android/gallery3d/app/GalleryHelpListActivity$1;-><init>(Lcom/sec/android/gallery3d/app/GalleryHelpListActivity;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/app/GalleryHelpListActivity;->mHelpItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/gallery3d/app/GalleryHelpListActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/app/GalleryHelpListActivity;->handleHelpOperation(I)V

    return-void
.end method

.method private handleDCHelpOperation(Ljava/lang/String;)V
    .locals 6

    const/4 v4, 0x0

    const/4 v0, -0x1

    const/4 v3, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v3, :pswitch_data_0

    const/4 v1, 0x4

    :goto_1
    invoke-direct {p0, v1}, Lcom/sec/android/gallery3d/app/GalleryHelpListActivity;->handleHelpOperation(I)V

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {p0, v0, v3}, Lcom/samsung/android/devicecog/gallery/controller/DCNlgManager;->getNlgRequestInfo(Landroid/content/Context;I[Ljava/lang/Object;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->SUCCESS:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    invoke-static {p0, p1, v3, v2}, Lcom/samsung/android/devicecog/gallery/DCUtils;->sendResponseDCState(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;)V

    return-void

    :sswitch_0
    const-string/jumbo v5, "ViewingPictures"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v3, v4

    goto :goto_0

    :sswitch_1
    const-string/jumbo v5, "ViewingAlbums"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :sswitch_2
    const-string/jumbo v5, "SharingPictures"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v3, 0x2

    goto :goto_0

    :pswitch_0
    const/4 v1, 0x1

    goto :goto_1

    :pswitch_1
    const/4 v1, 0x2

    goto :goto_1

    :pswitch_2
    const/4 v1, 0x3

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        -0x3b40febf -> :sswitch_1
        0xa2d1152 -> :sswitch_0
        0x3a38b411 -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private handleHelpOperation(I)V
    .locals 4

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const-string/jumbo v2, "com.samsung.gallery.help.VIEWING_PICTURE"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :goto_1
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/sec/android/gallery3d/app/GalleryHelpListActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v2, "GalleryHelpListActivity"

    const-string/jumbo v3, "Activity Not Found !!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_1
    const-string/jumbo v2, "com.samsung.gallery.help.VIEWING_ALBUM"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    :pswitch_2
    const-string/jumbo v2, "com.samsung.gallery.help.SHARING_PICTURE"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    :pswitch_3
    const-string/jumbo v2, "com.samsung.gallery.help.DELETE_PICTURE"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private resetLayout()V
    .locals 7

    const/4 v4, 0x0

    const v3, 0x7f040089

    invoke-virtual {p0, v3}, Lcom/sec/android/gallery3d/app/GalleryHelpListActivity;->setContentView(I)V

    const v3, 0x7f120157

    invoke-virtual {p0, v3}, Lcom/sec/android/gallery3d/app/GalleryHelpListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/GalleryHelpListActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f040087

    move-object v3, v4

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v5, v6, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v4, v3}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    const v3, 0x7f0f0032

    const v4, 0x7f040088

    invoke-static {p0, v3, v4}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v3, p0, Lcom/sec/android/gallery3d/app/GalleryHelpListActivity;->mHelpItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method private setHelpActionBar()V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/GalleryHelpListActivity;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/GalleryHelpListActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/GalleryHelpListActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/GalleryHelpListActivity;->mActionBar:Landroid/app/ActionBar;

    iget-object v1, p0, Lcom/sec/android/gallery3d/app/GalleryHelpListActivity;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/app/GalleryHelpListActivity;->mIsGraceUI:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/GalleryHelpListActivity;->mActionBar:Landroid/app/ActionBar;

    const v1, 0x7f020047

    invoke-virtual {p0, v1}, Lcom/sec/android/gallery3d/app/GalleryHelpListActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const v0, 0x7f10023c

    invoke-static {p0, v0}, Lcom/sec/android/gallery3d/util/GalleryUtils;->setTitleTextColor(Landroid/app/Activity;I)V

    const v0, 0x7f10012a

    invoke-static {p0, v0}, Lcom/sec/android/gallery3d/util/GalleryUtils;->setNavigationUpButtonColor(Landroid/app/Activity;I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getDCScreenStateId()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "Help"

    return-object v0
.end method

.method public getNextExpectedState(Ljava/util/List;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public onBackPressed()V
    .locals 2

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseDeviceCog:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/GalleryHelpListActivity;->mDeviceCogActivityListener:Lcom/samsung/android/devicecog/DeviceCogActivityListener;

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/GalleryHelpListActivity;->getDCScreenStateId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/samsung/android/devicecog/DeviceCogActivityListener;->onDeviceCogActivityOnBackPressed(Ljava/lang/String;)V

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    const/16 v1, 0x400

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/GalleryHelpListActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/app/GalleryHelpListActivity;->mActionBar:Landroid/app/ActionBar;

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->ShowStatusBar:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/GalleryHelpListActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/sec/android/gallery3d/util/GalleryUtils;->updateStatusBarColor(Landroid/view/Window;Landroid/content/Context;)V

    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/GalleryHelpListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a01ef

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/app/GalleryHelpListActivity;->title:Ljava/lang/String;

    invoke-direct {p0}, Lcom/sec/android/gallery3d/app/GalleryHelpListActivity;->resetLayout()V

    invoke-direct {p0}, Lcom/sec/android/gallery3d/app/GalleryHelpListActivity;->setHelpActionBar()V

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseDeviceCog:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/samsung/android/devicecog/gallery/DeviceCogHelpListActivityListenerImpl;

    invoke-direct {v0, p0, p0}, Lcom/samsung/android/devicecog/gallery/DeviceCogHelpListActivityListenerImpl;-><init>(Landroid/app/Activity;Lcom/samsung/android/devicecog/gallery/DCCommandExecutable;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/app/GalleryHelpListActivity;->mDeviceCogActivityListener:Lcom/samsung/android/devicecog/DeviceCogActivityListener;

    new-instance v0, Lcom/samsung/android/devicecog/gallery/viewstatehandler/HelpListActivityDCHandler;

    invoke-direct {v0, p0, p0}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/HelpListActivityDCHandler;-><init>(Landroid/app/Activity;Ljava/util/Observer;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/app/GalleryHelpListActivity;->mDCHandler:Lcom/samsung/android/devicecog/gallery/viewstatehandler/AbstractDCHandler;

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/GalleryHelpListActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    goto :goto_0
.end method

.method public onDCCommandStarted(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/bixby/data/Parameter;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/GalleryHelpListActivity;->mDCHandler:Lcom/samsung/android/devicecog/gallery/viewstatehandler/AbstractDCHandler;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/AbstractDCHandler;->startCommand(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public onDCParamFilling(Lcom/samsung/android/sdk/bixby/data/ParamFilling;)V
    .locals 0

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    const/4 v0, 0x0

    return v0

    :pswitch_0
    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/GalleryHelpListActivity;->onBackPressed()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseDeviceCog:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/GalleryHelpListActivity;->mDeviceCogActivityListener:Lcom/samsung/android/devicecog/DeviceCogActivityListener;

    invoke-interface {v0}, Lcom/samsung/android/devicecog/DeviceCogActivityListener;->onDeviceCogActivityPause()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseDeviceCog:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/GalleryHelpListActivity;->mDeviceCogActivityListener:Lcom/samsung/android/devicecog/DeviceCogActivityListener;

    invoke-interface {v0}, Lcom/samsung/android/devicecog/DeviceCogActivityListener;->onDeviceCogActivityResume()V

    :cond_0
    return-void
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 5

    move-object v0, p2

    check-cast v0, Lcom/sec/samsung/gallery/core/Event;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/core/Event;->getType()I

    move-result v1

    sget v3, Lcom/sec/samsung/gallery/core/Event;->EVENT_DC_CMD_HELP_OPERATION:I

    if-ne v1, v3, :cond_0

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/core/Event;->getData()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/sec/android/gallery3d/app/GalleryHelpListActivity;->handleDCHelpOperation(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v3, "GalleryHelpListActivity"

    const-string/jumbo v4, "Event is wrong"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
