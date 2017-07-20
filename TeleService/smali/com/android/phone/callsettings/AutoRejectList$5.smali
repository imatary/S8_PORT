.class Lcom/android/phone/callsettings/AutoRejectList$5;
.super Ljava/lang/Object;
.source "AutoRejectList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/AutoRejectList;->softkeyRightRun(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/callsettings/AutoRejectList;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/AutoRejectList;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/callsettings/AutoRejectList$5;->this$0:Lcom/android/phone/callsettings/AutoRejectList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectList$5;->this$0:Lcom/android/phone/callsettings/AutoRejectList;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/phone/callsettings/AutoRejectList;->-set6(Lcom/android/phone/callsettings/AutoRejectList;I)I

    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectList$5;->this$0:Lcom/android/phone/callsettings/AutoRejectList;

    invoke-static {v0}, Lcom/android/phone/callsettings/AutoRejectList;->-wrap4(Lcom/android/phone/callsettings/AutoRejectList;)V

    return-void
.end method
