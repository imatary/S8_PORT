.class Lcom/sec/android/gallery3d/util/ImageDRMUtil$5;
.super Ljava/lang/Object;
.source "ImageDRMUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/gallery3d/util/ImageDRMUtil;->showPopupDialog(Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/gallery3d/util/ImageDRMUtil;

.field final synthetic val$dialog:Landroid/app/AlertDialog$Builder;


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/util/ImageDRMUtil;Landroid/app/AlertDialog$Builder;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/util/ImageDRMUtil$5;->this$0:Lcom/sec/android/gallery3d/util/ImageDRMUtil;

    iput-object p2, p0, Lcom/sec/android/gallery3d/util/ImageDRMUtil$5;->val$dialog:Landroid/app/AlertDialog$Builder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/util/ImageDRMUtil$5;->val$dialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method
