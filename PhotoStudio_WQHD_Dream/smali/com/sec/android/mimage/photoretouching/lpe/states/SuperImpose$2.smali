.class Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose$2;
.super Ljava/lang/Object;
.source "SuperImpose.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->showDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;

.field final synthetic val$labelStyle:I


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;I)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose$2;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;

    iput p2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose$2;->val$labelStyle:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 10

    sget-object v5, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->LABEL_SCREEN_ID:Ljava/lang/String;

    sget-object v6, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->LABEL_SCREEN_OK_ID:Ljava/lang/String;

    sget-object v7, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->LABEL_SCREEN_OK_EVENT_NAME:Ljava/lang/String;

    invoke-static {v5, v6, v7}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->insertEventSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v5, p1

    check-cast v5, Landroid/app/Dialog;

    const v6, 0x7f0e010f

    invoke-virtual {v5, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/mimage/photoretouching/Decoration/InputText;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/Decoration/InputText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "\n"

    const-string v7, " "

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    invoke-static {v5}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->setLabelStyleNum(I)V

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose$2;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;

    # setter for: Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->labelText:Ljava/lang/String;
    invoke-static {v5, v3}, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->access$202(Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;Ljava/lang/String;)Ljava/lang/String;

    new-instance v4, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose$2;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mDecorationMenuLayoutManager:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;
    invoke-static {v5}, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->access$300(Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;)Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;

    move-result-object v5

    iget-object v5, v5, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;-><init>(Landroid/content/Context;)V

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose$2;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;

    iget v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose$2;->val$labelStyle:I

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose$2;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->labelText:Ljava/lang/String;
    invoke-static {v7}, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->access$200(Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->getAdvancedLabel(ILjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v6

    # setter for: Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->labelbitmap:Landroid/graphics/Bitmap;
    invoke-static {v5, v6}, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->access$402(Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose$2;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->labelbitmap:Landroid/graphics/Bitmap;
    invoke-static {v5}, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->access$400(Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/16 v5, 0xbb8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose$2;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;

    iget-object v5, v5, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose$2;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->labelbitmap:Landroid/graphics/Bitmap;
    invoke-static {v6}, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->access$400(Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;)Landroid/graphics/Bitmap;

    move-result-object v6

    iget v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose$2;->val$labelStyle:I

    add-int/lit8 v7, v7, 0x64

    const/4 v8, 0x2

    const/4 v9, 0x0

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->addLayerSuperImpose(Landroid/graphics/Bitmap;IIZ)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose$2;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->selectedLabelList:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->access$500(Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;)Ljava/util/ArrayList;

    move-result-object v5

    iget v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose$2;->val$labelStyle:I

    add-int/lit8 v6, v6, 0x64

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void

    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose$2;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;

    iget-object v5, v5, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    new-instance v6, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose$2$1;

    invoke-direct {v6, p0}, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose$2$1;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose$2;)V

    const-wide/16 v8, 0x1f4

    invoke-virtual {v5, v6, v8, v9}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
