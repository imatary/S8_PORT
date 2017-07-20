.class Lcom/android/phone/nwservice/CallForwarding$15$2;
.super Ljava/lang/Object;
.source "CallForwarding.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/nwservice/CallForwarding$15;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/phone/nwservice/CallForwarding$15;


# direct methods
.method constructor <init>(Lcom/android/phone/nwservice/CallForwarding$15;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/nwservice/CallForwarding$15$2;->this$1:Lcom/android/phone/nwservice/CallForwarding$15;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/phone/nwservice/CallForwarding$15$2;->this$1:Lcom/android/phone/nwservice/CallForwarding$15;

    iget-object v0, v0, Lcom/android/phone/nwservice/CallForwarding$15;->this$0:Lcom/android/phone/nwservice/CallForwarding;

    invoke-static {v0}, Lcom/android/phone/nwservice/CallForwarding;->-wrap1(Lcom/android/phone/nwservice/CallForwarding;)V

    return-void
.end method
