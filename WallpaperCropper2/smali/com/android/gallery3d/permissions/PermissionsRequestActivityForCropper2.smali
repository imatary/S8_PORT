.class public Lcom/android/gallery3d/permissions/PermissionsRequestActivityForCropper2;
.super Landroid/app/Activity;
.source "PermissionsRequestActivityForCropper2.java"

# interfaces
.implements Landroid/support/v4/app/ActivityCompat$OnRequestPermissionsResultCallback;


# static fields
.field private static final REQUEST_PERMISSION_CODE_ON_LAUNCH:I = 0x1

.field private static final TAG:Ljava/lang/String; = "Cropper2_PermissionsAct"


# instance fields
.field private mCropper2PreviousIntent:Landroid/content/Intent;

.field private mDialog:Lcom/android/gallery3d/permissions/PermissionsRequestRationaleDialog;

.field private mExtras:Landroid/os/Bundle;

.field private mRequestPermissionsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-object v1, p0, Lcom/android/gallery3d/permissions/PermissionsRequestActivityForCropper2;->mCropper2PreviousIntent:Landroid/content/Intent;

    iput-object v1, p0, Lcom/android/gallery3d/permissions/PermissionsRequestActivityForCropper2;->mExtras:Landroid/os/Bundle;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/permissions/PermissionsRequestActivityForCropper2;->mRequestPermissionsList:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/android/gallery3d/permissions/PermissionsRequestActivityForCropper2;->mDialog:Lcom/android/gallery3d/permissions/PermissionsRequestRationaleDialog;

    return-void
.end method

.method private startCropper2Activity()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/gallery3d/permissions/PermissionsRequestActivityForCropper2;->mCropper2PreviousIntent:Landroid/content/Intent;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/gallery3d/permissions/PermissionsRequestActivityForCropper2;->mCropper2PreviousIntent:Landroid/content/Intent;

    const/high16 v1, 0x2000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/gallery3d/permissions/PermissionsRequestActivityForCropper2;->mCropper2PreviousIntent:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/permissions/PermissionsRequestActivityForCropper2;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/gallery3d/permissions/PermissionsRequestActivityForCropper2;->finish()V

    invoke-virtual {p0, v2, v2}, Lcom/android/gallery3d/permissions/PermissionsRequestActivityForCropper2;->overridePendingTransition(II)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/gallery3d/permissions/PermissionsRequestActivityForCropper2;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/permissions/PermissionsRequestActivityForCropper2;->mExtras:Landroid/os/Bundle;

    const-string/jumbo v0, "Cropper2_PermissionsAct"

    const-string/jumbo v1, "OnCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/gallery3d/permissions/PermissionsRequestActivityForCropper2;->mExtras:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/permissions/PermissionsRequestActivityForCropper2;->mExtras:Landroid/os/Bundle;

    const-string/jumbo v1, "previous_intent"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Lcom/android/gallery3d/permissions/PermissionsRequestActivityForCropper2;->mCropper2PreviousIntent:Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 3

    packed-switch p1, :pswitch_data_0

    return-void

    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_1

    aget v1, p3, v0

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/android/gallery3d/permissions/PermissionsRequestActivityForCropper2;->finish()V

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/android/gallery3d/permissions/PermissionsRequestActivityForCropper2;->startCropper2Activity()V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onResume()V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const-string/jumbo v0, "Cropper2_PermissionsAct"

    const-string/jumbo v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/gallery3d/permissions/PermissionsRequestActivityForCropper2;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/permissions/PermissionsRequestActivityForCropper2;->mExtras:Landroid/os/Bundle;

    const-string/jumbo v1, "permission_list"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iget-object v1, p0, Lcom/android/gallery3d/permissions/PermissionsRequestActivityForCropper2;->mExtras:Landroid/os/Bundle;

    const-string/jumbo v2, "isGooglePhotos"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-static {p0, v0}, Lcom/android/gallery3d/util/Utils;->getDisabledPermissionList(Landroid/content/Context;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/permissions/PermissionsRequestActivityForCropper2;->mRequestPermissionsList:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/gallery3d/permissions/PermissionsRequestActivityForCropper2;->mRequestPermissionsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_5

    iget-object v0, p0, Lcom/android/gallery3d/permissions/PermissionsRequestActivityForCropper2;->mRequestPermissionsList:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/android/gallery3d/util/Utils;->isPermissionAlreadyRequested(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/gallery3d/permissions/PermissionsRequestActivityForCropper2;->mRequestPermissionsList:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p0, v0}, Landroid/support/v4/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/permissions/PermissionsRequestActivityForCropper2;->mRequestPermissionsList:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/android/gallery3d/util/Utils;->isPermissionAlreadyRequested(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {v0, p0}, Lcom/android/gallery3d/util/Utils;->setPermissionRequested(Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0

    :cond_3
    new-instance v0, Lcom/android/gallery3d/permissions/PermissionsRequestRationaleDialog;

    iget-object v2, p0, Lcom/android/gallery3d/permissions/PermissionsRequestActivityForCropper2;->mRequestPermissionsList:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v2, v1}, Lcom/android/gallery3d/permissions/PermissionsRequestRationaleDialog;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Z)V

    iput-object v0, p0, Lcom/android/gallery3d/permissions/PermissionsRequestActivityForCropper2;->mDialog:Lcom/android/gallery3d/permissions/PermissionsRequestRationaleDialog;

    iget-object v0, p0, Lcom/android/gallery3d/permissions/PermissionsRequestActivityForCropper2;->mDialog:Lcom/android/gallery3d/permissions/PermissionsRequestRationaleDialog;

    invoke-virtual {v0}, Lcom/android/gallery3d/permissions/PermissionsRequestRationaleDialog;->showPermissionRationaleDialog()V

    :goto_1
    return-void

    :cond_4
    iget-object v0, p0, Lcom/android/gallery3d/permissions/PermissionsRequestActivityForCropper2;->mRequestPermissionsList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/gallery3d/permissions/PermissionsRequestActivityForCropper2;->mRequestPermissionsList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_1

    :cond_5
    invoke-direct {p0}, Lcom/android/gallery3d/permissions/PermissionsRequestActivityForCropper2;->startCropper2Activity()V

    return-void
.end method
