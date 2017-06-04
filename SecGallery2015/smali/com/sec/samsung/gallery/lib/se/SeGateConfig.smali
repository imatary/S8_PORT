.class public Lcom/sec/samsung/gallery/lib/se/SeGateConfig;
.super Ljava/lang/Object;
.source "SeGateConfig.java"


# static fields
.field public static final GATE_INTENT_ACTION:Ljava/lang/String; = "com.sec.android.gate.GATE"

.field public static final GATE_INTENT_EXTRA_ENABLED:Ljava/lang/String; = "ENABLED"

.field public static final LCDTEXT_INTENT_ACTION:Ljava/lang/String; = ""

.field public static final LCDTEXT_INTENT_EXTRA_ENABLED:Ljava/lang/String; = ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isGateEnabled()Z
    .locals 1

    invoke-static {}, Lcom/samsung/android/feature/SemGateConfig;->isGateEnabled()Z

    move-result v0

    return v0
.end method

.method public static isGateLcdtextEnabled()Z
    .locals 1

    invoke-static {}, Lcom/samsung/android/feature/SemGateConfig;->isGateLcdtextEnabled()Z

    move-result v0

    return v0
.end method

.method public static setGateEnabled(Z)V
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/feature/SemGateConfig;->setGateEnabled(Z)V

    return-void
.end method

.method public static setGateLcdtextEnabled(Z)V
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/feature/SemGateConfig;->setGateLcdtextEnabled(Z)V

    return-void
.end method
