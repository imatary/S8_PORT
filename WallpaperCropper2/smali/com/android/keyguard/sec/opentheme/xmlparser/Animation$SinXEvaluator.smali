.class public Lcom/android/keyguard/sec/opentheme/xmlparser/Animation$SinXEvaluator;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Landroid/animation/TypeEvaluator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SinXEvaluator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/animation/TypeEvaluator",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private adjust:F

.field private key:F

.field private pX:F

.field private pY:F

.field final synthetic this$0:Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;FFFF)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation$SinXEvaluator;->this$0:Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation$SinXEvaluator;->key:F

    iput p3, p0, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation$SinXEvaluator;->adjust:F

    iput p4, p0, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation$SinXEvaluator;->pX:F

    iput p5, p0, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation$SinXEvaluator;->pY:F

    return-void
.end method


# virtual methods
.method public evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result v0

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->floatValue()F

    move-result v1

    sub-float/2addr v1, v0

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    iget v1, p0, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation$SinXEvaluator;->pX:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation$SinXEvaluator;->key:F

    iget v2, p0, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation$SinXEvaluator;->adjust:F

    float-to-double v2, v2

    float-to-double v4, v0

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v0, v2

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation$SinXEvaluator;->pY:F

    add-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method
