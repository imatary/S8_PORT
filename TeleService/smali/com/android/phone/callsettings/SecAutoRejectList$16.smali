.class Lcom/android/phone/callsettings/SecAutoRejectList$16;
.super Ljava/lang/Object;
.source "SecAutoRejectList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/SecAutoRejectList;->initLayout(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/callsettings/SecAutoRejectList;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/SecAutoRejectList;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/callsettings/SecAutoRejectList$16;->this$0:Lcom/android/phone/callsettings/SecAutoRejectList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/phone/callsettings/SecAutoRejectList$16;->this$0:Lcom/android/phone/callsettings/SecAutoRejectList;

    invoke-static {v0}, Lcom/android/phone/callsettings/SecAutoRejectList;->-get9(Lcom/android/phone/callsettings/SecAutoRejectList;)Landroid/widget/Spinner;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSoundEffectsEnabled(Z)V

    iget-object v0, p0, Lcom/android/phone/callsettings/SecAutoRejectList$16;->this$0:Lcom/android/phone/callsettings/SecAutoRejectList;

    invoke-static {v0}, Lcom/android/phone/callsettings/SecAutoRejectList;->-get9(Lcom/android/phone/callsettings/SecAutoRejectList;)Landroid/widget/Spinner;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Spinner;->performClick()Z

    return-void
.end method
