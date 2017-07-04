.class Lcom/sec/samsung/gallery/controller/PickerItemSelected$1$1;
.super Ljava/lang/Object;
.source "PickerItemSelected.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/controller/PickerItemSelected$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/samsung/gallery/controller/PickerItemSelected$1;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/controller/PickerItemSelected$1;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/controller/PickerItemSelected$1$1;->this$1:Lcom/sec/samsung/gallery/controller/PickerItemSelected$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/PickerItemSelected$1$1;->this$1:Lcom/sec/samsung/gallery/controller/PickerItemSelected$1;

    iget-object v1, v1, Lcom/sec/samsung/gallery/controller/PickerItemSelected$1;->this$0:Lcom/sec/samsung/gallery/controller/PickerItemSelected;

    invoke-static {v1}, Lcom/sec/samsung/gallery/controller/PickerItemSelected;->access$000(Lcom/sec/samsung/gallery/controller/PickerItemSelected;)Landroid/app/Activity;

    move-result-object v1

    const-string/jumbo v2, "private_move_do_not_show"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->saveBooleanKey(Landroid/content/Context;Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/PickerItemSelected$1$1;->this$1:Lcom/sec/samsung/gallery/controller/PickerItemSelected$1;

    iget-object v1, v1, Lcom/sec/samsung/gallery/controller/PickerItemSelected$1;->this$0:Lcom/sec/samsung/gallery/controller/PickerItemSelected;

    invoke-static {v1}, Lcom/sec/samsung/gallery/controller/PickerItemSelected;->access$000(Lcom/sec/samsung/gallery/controller/PickerItemSelected;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/PickerItemSelected$1$1;->this$1:Lcom/sec/samsung/gallery/controller/PickerItemSelected$1;

    iget-object v1, v1, Lcom/sec/samsung/gallery/controller/PickerItemSelected$1;->this$0:Lcom/sec/samsung/gallery/controller/PickerItemSelected;

    invoke-static {v1, v0}, Lcom/sec/samsung/gallery/controller/PickerItemSelected;->access$100(Lcom/sec/samsung/gallery/controller/PickerItemSelected;Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/PickerItemSelected$1$1;->this$1:Lcom/sec/samsung/gallery/controller/PickerItemSelected$1;

    iget-object v1, v1, Lcom/sec/samsung/gallery/controller/PickerItemSelected$1;->this$0:Lcom/sec/samsung/gallery/controller/PickerItemSelected;

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/PickerItemSelected$1$1;->this$1:Lcom/sec/samsung/gallery/controller/PickerItemSelected$1;

    iget-object v2, v2, Lcom/sec/samsung/gallery/controller/PickerItemSelected$1;->val$mediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-static {v1, v2, v0}, Lcom/sec/samsung/gallery/controller/PickerItemSelected;->access$200(Lcom/sec/samsung/gallery/controller/PickerItemSelected;Lcom/sec/android/gallery3d/data/MediaObject;Landroid/content/Intent;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/PickerItemSelected$1$1;->this$1:Lcom/sec/samsung/gallery/controller/PickerItemSelected$1;

    iget-object v1, v1, Lcom/sec/samsung/gallery/controller/PickerItemSelected$1;->this$0:Lcom/sec/samsung/gallery/controller/PickerItemSelected;

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/PickerItemSelected$1$1;->this$1:Lcom/sec/samsung/gallery/controller/PickerItemSelected$1;

    iget-object v2, v2, Lcom/sec/samsung/gallery/controller/PickerItemSelected$1;->val$mediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-static {v1, v2, v0}, Lcom/sec/samsung/gallery/controller/PickerItemSelected;->access$300(Lcom/sec/samsung/gallery/controller/PickerItemSelected;Lcom/sec/android/gallery3d/data/MediaItem;Landroid/content/Intent;)V

    goto :goto_0
.end method
