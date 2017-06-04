.class public Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper$ExportedTranscodeElement;
.super Ljava/lang/Object;
.source "TranscodeElementWrapper.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExportedTranscodeElement"
.end annotation


# instance fields
.field private exportedTE:Lcom/samsung/app/video/editor/external/TranscodeElement;

.field private exportedfilepath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setexportedTE(Lcom/samsung/app/video/editor/external/TranscodeElement;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper$ExportedTranscodeElement;->exportedTE:Lcom/samsung/app/video/editor/external/TranscodeElement;

    return-void
.end method

.method public setfilePath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper$ExportedTranscodeElement;->exportedfilepath:Ljava/lang/String;

    return-void
.end method
