.class Lcom/android/phone/callsettings/SubNumberManager$4;
.super Ljava/lang/Object;
.source "SubNumberManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/SubNumberManager;->softkeyRightRun(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/callsettings/SubNumberManager;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/SubNumberManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/callsettings/SubNumberManager$4;->this$0:Lcom/android/phone/callsettings/SubNumberManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/phone/callsettings/SubNumberManager$4;->this$0:Lcom/android/phone/callsettings/SubNumberManager;

    iget-object v0, v0, Lcom/android/phone/callsettings/SubNumberManager;->listView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/phone/callsettings/SubNumberManager$4;->this$0:Lcom/android/phone/callsettings/SubNumberManager;

    invoke-static {v1}, Lcom/android/phone/callsettings/SubNumberManager;->-get10(Lcom/android/phone/callsettings/SubNumberManager;)Lcom/android/phone/callsettings/SubNumberManager$SubNumberAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/android/phone/callsettings/SubNumberManager$4;->this$0:Lcom/android/phone/callsettings/SubNumberManager;

    invoke-static {v0}, Lcom/android/phone/callsettings/SubNumberManager;->-wrap4(Lcom/android/phone/callsettings/SubNumberManager;)V

    return-void
.end method
