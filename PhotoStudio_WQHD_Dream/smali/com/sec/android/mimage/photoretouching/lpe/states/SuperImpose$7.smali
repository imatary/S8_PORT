.class Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose$7;
.super Ljava/lang/Object;
.source "SuperImpose.java"

# interfaces
.implements Lcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment$OnDecorationAttachInterfaceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->addDecorationFragments(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose$7;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDecorationFragmentAdded()V
    .locals 0

    return-void
.end method

.method public onDecorationFragmentRemoved()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose$7;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->removeDecorationFragments(Z)V

    return-void
.end method

.method public onDecorationItemAdded(Lcom/sec/android/mimage/photoretouching/Decoration/DecorationItem;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose$7;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;

    # setter for: Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mCurrentDecItem:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationItem;
    invoke-static {v0, p1}, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->access$1002(Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;Lcom/sec/android/mimage/photoretouching/Decoration/DecorationItem;)Lcom/sec/android/mimage/photoretouching/Decoration/DecorationItem;

    if-eqz p1, :cond_0

    const-string v0, "Sticker"

    invoke-virtual {p1}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationItem;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose$7;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;

    invoke-virtual {p1}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationItem;->getId()I

    move-result v1

    invoke-virtual {p1}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationItem;->getResId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->getStickerBitmap(ILjava/lang/Object;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose$7;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;

    invoke-virtual {v0, v3}, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->removeDecorationFragments(Z)V

    return-void

    :cond_1
    const-string v0, "Label"

    invoke-virtual {p1}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationItem;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose$7;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;

    invoke-virtual {p1}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationItem;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->showDialog(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose$7;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Unknown decoration item received"

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
