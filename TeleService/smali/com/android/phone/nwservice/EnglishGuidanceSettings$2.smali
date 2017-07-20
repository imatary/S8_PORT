.class Lcom/android/phone/nwservice/EnglishGuidanceSettings$2;
.super Ljava/lang/Object;
.source "EnglishGuidanceSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/nwservice/EnglishGuidanceSettings;->showAlertDialogOutgoingCalls()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/nwservice/EnglishGuidanceSettings;


# direct methods
.method constructor <init>(Lcom/android/phone/nwservice/EnglishGuidanceSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/nwservice/EnglishGuidanceSettings$2;->this$0:Lcom/android/phone/nwservice/EnglishGuidanceSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    const/4 v2, 0x1

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/android/phone/nwservice/EnglishGuidanceSettings$2;->this$0:Lcom/android/phone/nwservice/EnglishGuidanceSettings;

    const-string/jumbo v1, "*145*0*#"

    invoke-static {v0, v1}, Lcom/android/phone/nwservice/EnglishGuidanceSettings;->-wrap0(Lcom/android/phone/nwservice/EnglishGuidanceSettings;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/android/phone/PhoneUtilsJpn;->setCheckCurrentSetting(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/phone/nwservice/EnglishGuidanceSettings$2;->this$0:Lcom/android/phone/nwservice/EnglishGuidanceSettings;

    const-string/jumbo v1, "*145*1*#"

    invoke-static {v0, v1}, Lcom/android/phone/nwservice/EnglishGuidanceSettings;->-wrap0(Lcom/android/phone/nwservice/EnglishGuidanceSettings;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/android/phone/PhoneUtilsJpn;->setCheckCurrentSetting(Z)V

    goto :goto_0
.end method
