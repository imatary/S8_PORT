.class Lcom/android/phone/edge/GlanceReply$1;
.super Landroid/os/Handler;
.source "GlanceReply.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/edge/GlanceReply;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/edge/GlanceReply;


# direct methods
.method constructor <init>(Lcom/android/phone/edge/GlanceReply;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/edge/GlanceReply$1;->this$0:Lcom/android/phone/edge/GlanceReply;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
