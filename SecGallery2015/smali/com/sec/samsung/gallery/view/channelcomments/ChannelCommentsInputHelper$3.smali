.class Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsInputHelper$3;
.super Ljava/lang/Object;
.source "ChannelCommentsInputHelper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsInputHelper;->setListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsInputHelper;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsInputHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsInputHelper$3;->this$0:Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsInputHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsInputHelper$3;->this$0:Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsInputHelper;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsInputHelper;->access$200(Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsInputHelper;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsInputHelper$3;->this$0:Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsInputHelper;

    invoke-virtual {v1, v0}, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsInputHelper;->sendComment(Ljava/lang/String;)V

    return-void
.end method
