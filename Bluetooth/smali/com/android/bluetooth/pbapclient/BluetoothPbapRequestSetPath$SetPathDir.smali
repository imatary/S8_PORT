.class final enum Lcom/android/bluetooth/pbapclient/BluetoothPbapRequestSetPath$SetPathDir;
.super Ljava/lang/Enum;
.source "BluetoothPbapRequestSetPath.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/pbapclient/BluetoothPbapRequestSetPath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "SetPathDir"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/bluetooth/pbapclient/BluetoothPbapRequestSetPath$SetPathDir;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/bluetooth/pbapclient/BluetoothPbapRequestSetPath$SetPathDir;

.field public static final enum DOWN:Lcom/android/bluetooth/pbapclient/BluetoothPbapRequestSetPath$SetPathDir;

.field public static final enum ROOT:Lcom/android/bluetooth/pbapclient/BluetoothPbapRequestSetPath$SetPathDir;

.field public static final enum UP:Lcom/android/bluetooth/pbapclient/BluetoothPbapRequestSetPath$SetPathDir;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/android/bluetooth/pbapclient/BluetoothPbapRequestSetPath$SetPathDir;

    const-string/jumbo v1, "ROOT"

    invoke-direct {v0, v1, v2}, Lcom/android/bluetooth/pbapclient/BluetoothPbapRequestSetPath$SetPathDir;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/bluetooth/pbapclient/BluetoothPbapRequestSetPath$SetPathDir;->ROOT:Lcom/android/bluetooth/pbapclient/BluetoothPbapRequestSetPath$SetPathDir;

    new-instance v0, Lcom/android/bluetooth/pbapclient/BluetoothPbapRequestSetPath$SetPathDir;

    const-string/jumbo v1, "UP"

    invoke-direct {v0, v1, v3}, Lcom/android/bluetooth/pbapclient/BluetoothPbapRequestSetPath$SetPathDir;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/bluetooth/pbapclient/BluetoothPbapRequestSetPath$SetPathDir;->UP:Lcom/android/bluetooth/pbapclient/BluetoothPbapRequestSetPath$SetPathDir;

    new-instance v0, Lcom/android/bluetooth/pbapclient/BluetoothPbapRequestSetPath$SetPathDir;

    const-string/jumbo v1, "DOWN"

    invoke-direct {v0, v1, v4}, Lcom/android/bluetooth/pbapclient/BluetoothPbapRequestSetPath$SetPathDir;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/bluetooth/pbapclient/BluetoothPbapRequestSetPath$SetPathDir;->DOWN:Lcom/android/bluetooth/pbapclient/BluetoothPbapRequestSetPath$SetPathDir;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/bluetooth/pbapclient/BluetoothPbapRequestSetPath$SetPathDir;

    sget-object v1, Lcom/android/bluetooth/pbapclient/BluetoothPbapRequestSetPath$SetPathDir;->ROOT:Lcom/android/bluetooth/pbapclient/BluetoothPbapRequestSetPath$SetPathDir;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/bluetooth/pbapclient/BluetoothPbapRequestSetPath$SetPathDir;->UP:Lcom/android/bluetooth/pbapclient/BluetoothPbapRequestSetPath$SetPathDir;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/bluetooth/pbapclient/BluetoothPbapRequestSetPath$SetPathDir;->DOWN:Lcom/android/bluetooth/pbapclient/BluetoothPbapRequestSetPath$SetPathDir;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/bluetooth/pbapclient/BluetoothPbapRequestSetPath$SetPathDir;->$VALUES:[Lcom/android/bluetooth/pbapclient/BluetoothPbapRequestSetPath$SetPathDir;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/bluetooth/pbapclient/BluetoothPbapRequestSetPath$SetPathDir;
    .locals 1

    const-class v0, Lcom/android/bluetooth/pbapclient/BluetoothPbapRequestSetPath$SetPathDir;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/pbapclient/BluetoothPbapRequestSetPath$SetPathDir;

    return-object v0
.end method

.method public static values()[Lcom/android/bluetooth/pbapclient/BluetoothPbapRequestSetPath$SetPathDir;
    .locals 1

    sget-object v0, Lcom/android/bluetooth/pbapclient/BluetoothPbapRequestSetPath$SetPathDir;->$VALUES:[Lcom/android/bluetooth/pbapclient/BluetoothPbapRequestSetPath$SetPathDir;

    return-object v0
.end method
