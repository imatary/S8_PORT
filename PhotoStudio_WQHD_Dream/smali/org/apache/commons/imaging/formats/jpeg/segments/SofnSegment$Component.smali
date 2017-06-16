.class public Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment$Component;
.super Ljava/lang/Object;
.source "SofnSegment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Component"
.end annotation


# instance fields
.field public final componentIdentifier:I

.field public final horizontalSamplingFactor:I

.field public final quantTabDestSelector:I

.field public final verticalSamplingFactor:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment$Component;->componentIdentifier:I

    iput p2, p0, Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment$Component;->horizontalSamplingFactor:I

    iput p3, p0, Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment$Component;->verticalSamplingFactor:I

    iput p4, p0, Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment$Component;->quantTabDestSelector:I

    return-void
.end method
