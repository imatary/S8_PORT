.class Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$AppChoiceDialogFragment$ListClickListener;
.super Ljava/lang/Object;
.source "AppChoiceDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$AppChoiceDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListClickListener"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$AppChoiceDialogFragment;


# direct methods
.method private constructor <init>(Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$AppChoiceDialogFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$AppChoiceDialogFragment$ListClickListener;->this$1:Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$AppChoiceDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$AppChoiceDialogFragment;Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$AppChoiceDialogFragment$ListClickListener;-><init>(Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$AppChoiceDialogFragment;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$AppChoiceDialogFragment$ListClickListener;->this$1:Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$AppChoiceDialogFragment;

    # invokes: Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$AppChoiceDialogFragment;->onChoiceItemClick(I)V
    invoke-static {v0, p2}, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$AppChoiceDialogFragment;->access$1400(Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$AppChoiceDialogFragment;I)V

    return-void
.end method
