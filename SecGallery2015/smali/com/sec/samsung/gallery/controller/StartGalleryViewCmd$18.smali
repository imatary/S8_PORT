.class Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd$18;
.super Ljava/lang/Object;
.source "StartGalleryViewCmd.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;->showDeleteShortCutDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd$18;->this$0:Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd$18;->this$0:Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;

    invoke-static {v0}, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;->access$600(Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd$18;->this$0:Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;

    invoke-static {v0}, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;->access$100(Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v0

    const/4 v1, 0x0

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.DELETE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->setResult(ILandroid/content/Intent;)V

    const-string/jumbo v0, "StartGalleryViewCmd"

    const-string/jumbo v1, "showShortCutDeleteDialog : ShortCut will be deleted."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd$18;->this$0:Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;

    invoke-static {v0}, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;->access$100(Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->finish()V

    return-void
.end method
