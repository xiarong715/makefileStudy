foo := mad.c sink.c log.c source.c
DIR := "./root/work"

DST := $(patsubst %.c,%.d,$(foo))
DST := $(foreach one,$(DST),$(DIR)/$(one))

all: $(DST)
	@echo $^

# 是从 $(DIR)/%.d 模式开始依次匹配$(DST)中用空格隔开的部分，对于 ./root/work/mad.d 目标，$(DIR)/%.d匹配到 ./root/work/mad.d时，茎(stem)为 mad
$(DST):$(DIR)/%.d:%.c		# ./root/work/mad.d:mad.c
	@mkdir -p $(dir $@)		# mkdir -p ./root/work
	@echo $^				# mad.c
	@touch $@				# touch ./root/work/mad.d

%.c:
	@touch $@

clean:
	rm -rf $(DIR)
