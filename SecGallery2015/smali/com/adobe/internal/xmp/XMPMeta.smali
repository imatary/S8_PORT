.class public interface abstract Lcom/adobe/internal/xmp/XMPMeta;
.super Ljava/lang/Object;
.source "XMPMeta.java"

# interfaces
.implements Ljava/lang/Cloneable;


# virtual methods
.method public abstract clone()Ljava/lang/Object;
.end method

.method public abstract doesPropertyExist(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract getPropertyString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/internal/xmp/XMPException;
        }
    .end annotation
.end method

.method public abstract setLocalizedText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/internal/xmp/options/PropertyOptions;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/internal/xmp/XMPException;
        }
    .end annotation
.end method

.method public abstract setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/internal/xmp/XMPException;
        }
    .end annotation
.end method
