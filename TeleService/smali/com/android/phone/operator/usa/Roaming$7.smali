.class Lcom/android/phone/operator/usa/Roaming$7;
.super Ljava/lang/Object;
.source "Roaming.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/operator/usa/Roaming;->internationalCdmaVoiceRoamingSettingTreeClick(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/operator/usa/Roaming;


# direct methods
.method constructor <init>(Lcom/android/phone/operator/usa/Roaming;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/operator/usa/Roaming$7;->this$0:Lcom/android/phone/operator/usa/Roaming;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/android/phone/operator/usa/Roaming$7;->this$0:Lcom/android/phone/operator/usa/Roaming;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/phone/operator/usa/Roaming;->-wrap3(Lcom/android/phone/operator/usa/Roaming;II)V

    return-void
.end method
