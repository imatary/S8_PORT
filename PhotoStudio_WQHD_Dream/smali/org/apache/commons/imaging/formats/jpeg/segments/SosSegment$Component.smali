.class public Lorg/apache/commons/imaging/formats/jpeg/segments/SosSegment$Component;
.super Ljava/lang/Object;
.source "SosSegment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/imaging/formats/jpeg/segments/SosSegment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Component"
.end annotation


# instance fields
.field public final acCodingTableSelector:I

.field public final dcCodingTableSelector:I

.field public final scanComponentSelector:I


# direct methods
.method public constructor <init>(III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/apache/commons/imaging/formats/jpeg/segments/SosSegment$Component;->scanComponentSelector:I

    iput p2, p0, Lorg/apache/commons/imaging/formats/jpeg/segments/SosSegment$Component;->dcCodingTableSelector:I

    iput p3, p0, Lorg/apache/commons/imaging/formats/jpeg/segments/SosSegment$Component;->acCodingTableSelector:I

    return-void
.end method
