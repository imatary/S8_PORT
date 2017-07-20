.class public final enum Lcom/android/phone/emergencydialer/SyncGroupItemContainer$ItemType;
.super Ljava/lang/Enum;
.source "SyncGroupItemContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/emergencydialer/SyncGroupItemContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ItemType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/phone/emergencydialer/SyncGroupItemContainer$ItemType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/phone/emergencydialer/SyncGroupItemContainer$ItemType;

.field public static final enum EMERGENCY_DIALER:Lcom/android/phone/emergencydialer/SyncGroupItemContainer$ItemType;

.field public static final enum ICE_CONTACT:Lcom/android/phone/emergencydialer/SyncGroupItemContainer$ItemType;


# instance fields
.field public final id:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer$ItemType;

    const-string/jumbo v1, "ICE_CONTACT"

    invoke-direct {v0, v1, v2, v2}, Lcom/android/phone/emergencydialer/SyncGroupItemContainer$ItemType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer$ItemType;->ICE_CONTACT:Lcom/android/phone/emergencydialer/SyncGroupItemContainer$ItemType;

    new-instance v0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer$ItemType;

    const-string/jumbo v1, "EMERGENCY_DIALER"

    invoke-direct {v0, v1, v3, v3}, Lcom/android/phone/emergencydialer/SyncGroupItemContainer$ItemType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer$ItemType;->EMERGENCY_DIALER:Lcom/android/phone/emergencydialer/SyncGroupItemContainer$ItemType;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/phone/emergencydialer/SyncGroupItemContainer$ItemType;

    sget-object v1, Lcom/android/phone/emergencydialer/SyncGroupItemContainer$ItemType;->ICE_CONTACT:Lcom/android/phone/emergencydialer/SyncGroupItemContainer$ItemType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/phone/emergencydialer/SyncGroupItemContainer$ItemType;->EMERGENCY_DIALER:Lcom/android/phone/emergencydialer/SyncGroupItemContainer$ItemType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer$ItemType;->$VALUES:[Lcom/android/phone/emergencydialer/SyncGroupItemContainer$ItemType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer$ItemType;->id:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/phone/emergencydialer/SyncGroupItemContainer$ItemType;
    .locals 1

    const-class v0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer$ItemType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer$ItemType;

    return-object v0
.end method

.method public static values()[Lcom/android/phone/emergencydialer/SyncGroupItemContainer$ItemType;
    .locals 1

    sget-object v0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer$ItemType;->$VALUES:[Lcom/android/phone/emergencydialer/SyncGroupItemContainer$ItemType;

    return-object v0
.end method
