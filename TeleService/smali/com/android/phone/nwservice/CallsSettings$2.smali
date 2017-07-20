.class Lcom/android/phone/nwservice/CallsSettings$2;
.super Ljava/lang/Object;
.source "CallsSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/nwservice/CallsSettings;->showAlertDialogOutgoingCalls()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/nwservice/CallsSettings;


# direct methods
.method constructor <init>(Lcom/android/phone/nwservice/CallsSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/nwservice/CallsSettings$2;->this$0:Lcom/android/phone/nwservice/CallsSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/android/phone/nwservice/CallsSettings$2;->this$0:Lcom/android/phone/nwservice/CallsSettings;

    const-string/jumbo v1, "*145*0*#"

    invoke-static {v0, v1}, Lcom/android/phone/nwservice/CallsSettings;->-wrap0(Lcom/android/phone/nwservice/CallsSettings;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/phone/nwservice/CallsSettings$2;->this$0:Lcom/android/phone/nwservice/CallsSettings;

    const-string/jumbo v1, "*145*1*#"

    invoke-static {v0, v1}, Lcom/android/phone/nwservice/CallsSettings;->-wrap0(Lcom/android/phone/nwservice/CallsSettings;Ljava/lang/String;)V

    goto :goto_0
.end method
