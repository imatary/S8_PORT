.class Lcom/android/phone/edge/GlanceReply$5;
.super Ljava/lang/Object;
.source "GlanceReply.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/edge/GlanceReply;->alertEmptyMessage()Z
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

    iput-object p1, p0, Lcom/android/phone/edge/GlanceReply$5;->this$0:Lcom/android/phone/edge/GlanceReply;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/phone/edge/GlanceReply$5;->this$0:Lcom/android/phone/edge/GlanceReply;

    invoke-virtual {v0}, Lcom/android/phone/edge/GlanceReply;->changeDefaultMessage()V

    iget-object v0, p0, Lcom/android/phone/edge/GlanceReply$5;->this$0:Lcom/android/phone/edge/GlanceReply;

    invoke-virtual {v0}, Lcom/android/phone/edge/GlanceReply;->finish()V

    return-void
.end method
