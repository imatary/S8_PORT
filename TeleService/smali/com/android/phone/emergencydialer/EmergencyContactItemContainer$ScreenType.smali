.class public final enum Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ScreenType;
.super Ljava/lang/Enum;
.source "EmergencyContactItemContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ScreenType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ScreenType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ScreenType;

.field public static final enum NORMAL:Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ScreenType;

.field public static final enum REMOVE:Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ScreenType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ScreenType;

    const-string/jumbo v1, "NORMAL"

    invoke-direct {v0, v1, v2}, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ScreenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ScreenType;->NORMAL:Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ScreenType;

    new-instance v0, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ScreenType;

    const-string/jumbo v1, "REMOVE"

    invoke-direct {v0, v1, v3}, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ScreenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ScreenType;->REMOVE:Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ScreenType;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ScreenType;

    sget-object v1, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ScreenType;->NORMAL:Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ScreenType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ScreenType;->REMOVE:Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ScreenType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ScreenType;->$VALUES:[Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ScreenType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ScreenType;
    .locals 1

    const-class v0, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ScreenType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ScreenType;

    return-object v0
.end method

.method public static values()[Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ScreenType;
    .locals 1

    sget-object v0, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ScreenType;->$VALUES:[Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ScreenType;

    return-object v0
.end method
