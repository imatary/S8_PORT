.class Lcom/sec/samsung/gallery/view/common/StorageChoiceDialog$StorageChoiceDialogFragment$ListClickListener;
.super Ljava/lang/Object;
.source "StorageChoiceDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/common/StorageChoiceDialog$StorageChoiceDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListClickListener"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/samsung/gallery/view/common/StorageChoiceDialog$StorageChoiceDialogFragment;


# direct methods
.method private constructor <init>(Lcom/sec/samsung/gallery/view/common/StorageChoiceDialog$StorageChoiceDialogFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/common/StorageChoiceDialog$StorageChoiceDialogFragment$ListClickListener;->this$1:Lcom/sec/samsung/gallery/view/common/StorageChoiceDialog$StorageChoiceDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/samsung/gallery/view/common/StorageChoiceDialog$StorageChoiceDialogFragment;Lcom/sec/samsung/gallery/view/common/StorageChoiceDialog$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/common/StorageChoiceDialog$StorageChoiceDialogFragment$ListClickListener;-><init>(Lcom/sec/samsung/gallery/view/common/StorageChoiceDialog$StorageChoiceDialogFragment;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    invoke-static {}, Lcom/sec/samsung/gallery/core/Event$Builder;->create()Lcom/sec/samsung/gallery/core/Event;

    move-result-object v1

    sget v2, Lcom/sec/samsung/gallery/core/Event;->EVENT_CHOICE_NEW_ALBUM_STORAGE:I

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/core/Event;->setType(I)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/StorageChoiceDialog$StorageChoiceDialogFragment$ListClickListener;->this$1:Lcom/sec/samsung/gallery/view/common/StorageChoiceDialog$StorageChoiceDialogFragment;

    iget-object v1, v1, Lcom/sec/samsung/gallery/view/common/StorageChoiceDialog$StorageChoiceDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/StorageChoiceDialog;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/common/StorageChoiceDialog;->access$400(Lcom/sec/samsung/gallery/view/common/StorageChoiceDialog;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/core/Event;->setData(Ljava/lang/Object;)Lcom/sec/samsung/gallery/core/Event;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/StorageChoiceDialog$StorageChoiceDialogFragment$ListClickListener;->this$1:Lcom/sec/samsung/gallery/view/common/StorageChoiceDialog$StorageChoiceDialogFragment;

    iget-object v1, v1, Lcom/sec/samsung/gallery/view/common/StorageChoiceDialog$StorageChoiceDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/StorageChoiceDialog;

    invoke-virtual {v1, v0}, Lcom/sec/samsung/gallery/view/common/StorageChoiceDialog;->notifyObservers(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/StorageChoiceDialog$StorageChoiceDialogFragment$ListClickListener;->this$1:Lcom/sec/samsung/gallery/view/common/StorageChoiceDialog$StorageChoiceDialogFragment;

    iget-object v1, v1, Lcom/sec/samsung/gallery/view/common/StorageChoiceDialog$StorageChoiceDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/StorageChoiceDialog;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/common/StorageChoiceDialog;->access$600(Lcom/sec/samsung/gallery/view/common/StorageChoiceDialog;)Lcom/sec/samsung/gallery/view/common/StorageChoiceDialog$StorageChoiceDialogFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/common/StorageChoiceDialog$StorageChoiceDialogFragment;->dismiss()V

    return-void
.end method
