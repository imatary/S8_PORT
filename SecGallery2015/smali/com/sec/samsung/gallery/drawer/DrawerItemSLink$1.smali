.class Lcom/sec/samsung/gallery/drawer/DrawerItemSLink$1;
.super Ljava/lang/Object;
.source "DrawerItemSLink.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/drawer/DrawerItemSLink;->selectItem(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/drawer/DrawerItemSLink;

.field final synthetic val$activity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/drawer/DrawerItemSLink;Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/drawer/DrawerItemSLink$1;->this$0:Lcom/sec/samsung/gallery/drawer/DrawerItemSLink;

    iput-object p2, p0, Lcom/sec/samsung/gallery/drawer/DrawerItemSLink$1;->val$activity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    iget-object v2, p0, Lcom/sec/samsung/gallery/drawer/DrawerItemSLink$1;->val$activity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v2}, Lcom/samsung/android/sdk/samsunglink/SlinkSignInUtils;->getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/samsunglink/SlinkSignInUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/sdk/samsunglink/SlinkSignInUtils;->createSignInActivityIntent()Landroid/content/Intent;

    move-result-object v1

    :try_start_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/drawer/DrawerItemSLink$1;->val$activity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2, v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "DrawerItemSLink"

    const-string/jumbo v3, "Activity Not Found !!!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
