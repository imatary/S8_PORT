.class public Lcom/sec/android/gallery3d/app/PermissionsRequestActivity;
.super Landroid/app/Activity;
.source "PermissionsRequestActivity.java"

# interfaces
.implements Landroid/support/v4/app/ActivityCompat$OnRequestPermissionsResultCallback;


# static fields
.field private static final REQUEST_PERMISSION_CODE_ON_LAUNCH:I = 0x65

.field private static final TAG:Ljava/lang/String; = "PermissionsRequestActivity"


# instance fields
.field private mDialog:Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationaleDialog;

.field private mExtras:Landroid/os/Bundle;

.field private mGalleryPreviousIntent:Landroid/content/Intent;

.field private mIsAlreadyGalleryStarted:Z

.field private mPickMode:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-object v0, p0, Lcom/sec/android/gallery3d/app/PermissionsRequestActivity;->mGalleryPreviousIntent:Landroid/content/Intent;

    iput-object v0, p0, Lcom/sec/android/gallery3d/app/PermissionsRequestActivity;->mExtras:Landroid/os/Bundle;

    iput-object v0, p0, Lcom/sec/android/gallery3d/app/PermissionsRequestActivity;->mDialog:Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationaleDialog;

    iput-boolean v1, p0, Lcom/sec/android/gallery3d/app/PermissionsRequestActivity;->mPickMode:Z

    iput-boolean v1, p0, Lcom/sec/android/gallery3d/app/PermissionsRequestActivity;->mIsAlreadyGalleryStarted:Z

    return-void
.end method

.method private startGalleryActivity()V
    .locals 5

    const/high16 v4, 0x10000

    const/4 v3, 0x0

    const-string/jumbo v0, "PermissionsRequestActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startGalleryActivity mPickMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sec/android/gallery3d/app/PermissionsRequestActivity;->mPickMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/app/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/app/PermissionsRequestActivity;->mIsAlreadyGalleryStarted:Z

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/app/PermissionsRequestActivity;->mPickMode:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/PermissionsRequestActivity;->mGalleryPreviousIntent:Landroid/content/Intent;

    const-class v1, Lcom/sec/android/gallery3d/app/GalleryActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/PermissionsRequestActivity;->mGalleryPreviousIntent:Landroid/content/Intent;

    const/high16 v1, 0x2000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/PermissionsRequestActivity;->mGalleryPreviousIntent:Landroid/content/Intent;

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/PermissionsRequestActivity;->mGalleryPreviousIntent:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/sec/android/gallery3d/app/PermissionsRequestActivity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/PermissionsRequestActivity;->finish()V

    :goto_0
    invoke-virtual {p0, v3, v3}, Lcom/sec/android/gallery3d/app/PermissionsRequestActivity;->overridePendingTransition(II)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/app/PermissionsRequestActivity;->mGalleryPreviousIntent:Landroid/content/Intent;

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/PermissionsRequestActivity;->finish()V

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/PermissionsRequestActivity;->mGalleryPreviousIntent:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/sec/android/gallery3d/app/PermissionsRequestActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/PermissionsRequestActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/app/PermissionsRequestActivity;->mExtras:Landroid/os/Bundle;

    const-string/jumbo v0, "PermissionsRequestActivity"

    const-string/jumbo v1, "PermisionRequestActivity  OnCreate Start"

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/app/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/PermissionsRequestActivity;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    const-string/jumbo v0, "PermissionsRequestActivity"

    const-string/jumbo v1, "PermisionRequestActivity  extra is null so finish activity"

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/app/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/PermissionsRequestActivity;->finish()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/app/PermissionsRequestActivity;->mExtras:Landroid/os/Bundle;

    const-string/jumbo v1, "previous_intent"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Lcom/sec/android/gallery3d/app/PermissionsRequestActivity;->mGalleryPreviousIntent:Landroid/content/Intent;

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/PermissionsRequestActivity;->mExtras:Landroid/os/Bundle;

    const-string/jumbo v1, "isPickMode"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/app/PermissionsRequestActivity;->mPickMode:Z

    goto :goto_0
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 3

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const/4 v0, 0x0

    :goto_1
    array-length v1, p2

    if-ge v0, v1, :cond_1

    aget v1, p3, v0

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/PermissionsRequestActivity;->finish()V

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/gallery3d/app/PermissionsRequestActivity;->startGalleryActivity()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
    .end packed-switch
.end method

.method protected onResume()V
    .locals 6

    const/4 v5, 0x0

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const-string/jumbo v3, "Gallery"

    const-string/jumbo v4, "PermisionRequestActivity  onResume Start"

    invoke-static {v3, v4}, Lcom/sec/android/gallery3d/app/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/sec/android/gallery3d/app/PermissionsRequestActivity;->mExtras:Landroid/os/Bundle;

    const-string/jumbo v4, "permission_list"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    move-object v2, v3

    check-cast v2, [Ljava/lang/String;

    invoke-static {p0, v2}, Lcom/sec/android/gallery3d/util/RuntimePermissionUtils;->getDisabledPermissionList(Landroid/content/Context;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3, p0}, Lcom/sec/android/gallery3d/util/RuntimePermissionUtils;->isPermissionAlreadyRequested(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {p0, v3}, Landroid/support/v4/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/sec/android/gallery3d/app/PermissionsRequestActivity;->mDialog:Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationaleDialog;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/gallery3d/app/PermissionsRequestActivity;->mDialog:Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationaleDialog;

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationaleDialog;->dismissDialog()V

    :cond_0
    new-instance v3, Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationaleDialog;

    invoke-direct {v3, p0, v1}, Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationaleDialog;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v3, p0, Lcom/sec/android/gallery3d/app/PermissionsRequestActivity;->mDialog:Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationaleDialog;

    iget-object v3, p0, Lcom/sec/android/gallery3d/app/PermissionsRequestActivity;->mDialog:Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationaleDialog;

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationaleDialog;->showPermissionRationaleDialog()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/sec/android/gallery3d/util/RuntimePermissionUtils;->isPermissionAlreadyRequested(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-static {v0, p0}, Lcom/sec/android/gallery3d/util/RuntimePermissionUtils;->setPermissionRequested(Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_1

    :cond_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    const/16 v4, 0x65

    invoke-static {p0, v3, v4}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_0

    :cond_5
    iget-boolean v3, p0, Lcom/sec/android/gallery3d/app/PermissionsRequestActivity;->mIsAlreadyGalleryStarted:Z

    if-nez v3, :cond_1

    invoke-direct {p0}, Lcom/sec/android/gallery3d/app/PermissionsRequestActivity;->startGalleryActivity()V

    goto :goto_0
.end method
