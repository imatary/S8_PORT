.class Lcom/android/phone/callsettings/SecDeletePrefixList$1;
.super Landroid/os/Handler;
.source "SecDeletePrefixList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/callsettings/SecDeletePrefixList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/callsettings/SecDeletePrefixList;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/SecDeletePrefixList;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/callsettings/SecDeletePrefixList$1;->this$0:Lcom/android/phone/callsettings/SecDeletePrefixList;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/phone/callsettings/SecDeletePrefixList$1;->this$0:Lcom/android/phone/callsettings/SecDeletePrefixList;

    invoke-static {v0}, Lcom/android/phone/callsettings/SecDeletePrefixList;->-get1(Lcom/android/phone/callsettings/SecDeletePrefixList;)Lcom/android/phone/callsettings/SecDeletePrefixList$DeletePrefixAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/callsettings/SecDeletePrefixList$DeletePrefixAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method
