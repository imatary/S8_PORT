.class public interface abstract Lcom/navercorp/volleyextensions/volleyer/multipart/Part;
.super Ljava/lang/Object;
.source "Part.java"

# interfaces
.implements Lcom/navercorp/volleyextensions/volleyer/multipart/Writable;


# virtual methods
.method public abstract getContent()Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getContentType()Lcom/navercorp/volleyextensions/volleyer/http/ContentType;
.end method

.method public abstract getName()Ljava/lang/String;
.end method
