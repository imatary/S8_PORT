.class public Lcom/sec/samsung/gallery/lib/factory/GateConfigWrapper;
.super Ljava/lang/Object;
.source "GateConfigWrapper.java"


# static fields
.field public static final GATE_INTENT_ACTION:Ljava/lang/String;

.field public static final GATE_INTENT_EXTRA_ENABLED:Ljava/lang/String;

.field public static final LCDTEXT_INTENT_ACTION:Ljava/lang/String;

.field public static final LCDTEXT_INTENT_EXTRA_ENABLED:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "com.sec.android.gate.GATE"

    sput-object v0, Lcom/sec/samsung/gallery/lib/factory/GateConfigWrapper;->GATE_INTENT_ACTION:Ljava/lang/String;

    const-string/jumbo v0, "ENABLED"

    sput-object v0, Lcom/sec/samsung/gallery/lib/factory/GateConfigWrapper;->GATE_INTENT_EXTRA_ENABLED:Ljava/lang/String;

    const-string/jumbo v0, ""

    sput-object v0, Lcom/sec/samsung/gallery/lib/factory/GateConfigWrapper;->LCDTEXT_INTENT_ACTION:Ljava/lang/String;

    const-string/jumbo v0, ""

    sput-object v0, Lcom/sec/samsung/gallery/lib/factory/GateConfigWrapper;->LCDTEXT_INTENT_EXTRA_ENABLED:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isGateEnabled()Z
    .locals 1

    invoke-static {}, Lcom/sec/samsung/gallery/lib/se/SeGateConfig;->isGateEnabled()Z

    move-result v0

    return v0
.end method

.method public static isGateLcdtextEnabled()Z
    .locals 1

    invoke-static {}, Lcom/sec/samsung/gallery/lib/se/SeGateConfig;->isGateLcdtextEnabled()Z

    move-result v0

    return v0
.end method

.method public static setGateEnabled(Z)V
    .locals 0

    invoke-static {p0}, Lcom/sec/samsung/gallery/lib/se/SeGateConfig;->setGateEnabled(Z)V

    return-void
.end method

.method public static setGateLcdtextEnabled(Z)V
    .locals 0

    invoke-static {p0}, Lcom/sec/samsung/gallery/lib/se/SeGateConfig;->setGateLcdtextEnabled(Z)V

    return-void
.end method
