.class Lcom/android/phone/nwservice/CLIRSetting$1;
.super Landroid/os/Handler;
.source "CLIRSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/nwservice/CLIRSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/nwservice/CLIRSetting;


# direct methods
.method constructor <init>(Lcom/android/phone/nwservice/CLIRSetting;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/nwservice/CLIRSetting$1;->this$0:Lcom/android/phone/nwservice/CLIRSetting;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v1, "DONE"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/android/phone/nwservice/CLIRSetting$1;->this$0:Lcom/android/phone/nwservice/CLIRSetting;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/android/phone/nwservice/CLIRSetting;->removeDialog(I)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x34 -> :sswitch_1
    .end sparse-switch
.end method
