.class final Lcom/android/services/telephony/advanced911/AdvancedEmergencyManager$ConnectionResult;
.super Ljava/lang/Object;
.source "AdvancedEmergencyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/services/telephony/advanced911/AdvancedEmergencyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ConnectionResult"
.end annotation


# instance fields
.field public connection:Lcom/android/services/telephony/TelephonyConnection;

.field public connectionService:Lcom/android/services/telephony/TelephonyConnectionService;

.field public phone:Lcom/android/internal/telephony/Phone;

.field public request:Landroid/telecom/ConnectionRequest;

.field final synthetic this$0:Lcom/android/services/telephony/advanced911/AdvancedEmergencyManager;


# direct methods
.method public constructor <init>(Lcom/android/services/telephony/advanced911/AdvancedEmergencyManager;Lcom/android/services/telephony/TelephonyConnectionService;Lcom/android/services/telephony/TelephonyConnection;Lcom/android/internal/telephony/Phone;Landroid/telecom/ConnectionRequest;)V
    .locals 0

    iput-object p1, p0, Lcom/android/services/telephony/advanced911/AdvancedEmergencyManager$ConnectionResult;->this$0:Lcom/android/services/telephony/advanced911/AdvancedEmergencyManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/services/telephony/advanced911/AdvancedEmergencyManager$ConnectionResult;->connectionService:Lcom/android/services/telephony/TelephonyConnectionService;

    iput-object p3, p0, Lcom/android/services/telephony/advanced911/AdvancedEmergencyManager$ConnectionResult;->connection:Lcom/android/services/telephony/TelephonyConnection;

    iput-object p4, p0, Lcom/android/services/telephony/advanced911/AdvancedEmergencyManager$ConnectionResult;->phone:Lcom/android/internal/telephony/Phone;

    iput-object p5, p0, Lcom/android/services/telephony/advanced911/AdvancedEmergencyManager$ConnectionResult;->request:Landroid/telecom/ConnectionRequest;

    return-void
.end method
