# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database
# with its default values.
# The data can then be loaded with the rails db:seed (or created alongside the
# db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)"
# POTENTIAL FORMATS
# Video.create([{ title: Total Body Vinyasa Flow Yoga - 45 Minutes Strong Beginners and Intermediate` }, { length_in_min: `45` }, { fitness: "Intermediate" }, { url: `https://www.youtube.com/embed/wX-VCWYouTA` }])
# Video.create([{title: ``}, {length_in_min: ``}, {fitness: ``}, {url: ``}])

# 30 min all levels video
Video.create(title: "30-Minute Power Vinyasa Flow with Briohny Smyth", length_in_min: "30", fitness: "All levels", url: "https://www.youtube.com/embed/7ciS93shMNQ")
Video.create(title: "Gentle Yoga Flow - 30-Minute All Levels Yoga Class", length_in_min: "30", fitness: "All levels", url: "https://www.youtube.com/embed/g13nVd7OLYs")
Video.create(title: "30-Minute Power Vinyasa Flow with Caley Alyssa", length_in_min: "30", fitness: "All levels", url: "https://www.youtube.com/embed/RtSFH1dNRv4")
# 45 min all levels video
Video.create(title: "Slow Flow Yoga Sequence Plus Core Yoga Workout (45-min) All Levels!", length_in_min: "45", fitness: "All levels", url: "https://www.youtube.com/embed/rP1-ezT7-0g")
Video.create(title: "45 Minute Everyday Vinyasa Flow Yoga Class with Alex Mazerolle | lululemon", length_in_min: "45", fitness: "All levels", url: "https://www.youtube.com/embed/_kl_DxglATI")
Video.create(title: "Gentle Hatha Flow Yoga for Beginners - 45 Minutes", length_in_min: "45", fitness: "All levels", url: "https://www.youtube.com/embed/2iWy5HnRl-U")
# 60 min all levels video
Video.create(title: "Summer Vinyasa All Levels Flow Yoga Class - 60 min - Five Parks Yoga", length_in_min: "60", fitness: "All levels", url: "https://www.youtube.com/embed/zGoFt5RMEME")
Video.create(title: "1 Hour Beginner Yoga Flow", length_in_min: "60", fitness: "All levels", url: "https://www.youtube.com/embed/aDpM-t-YLz0")
Video.create(title: "60 Min Fun Vinyasa Flow Yoga Class - Five Parks Yoga", length_in_min: "60", fitness: "All levels", url: "https://www.youtube.com/embed/39jwIx-5uws")
# 30 min intermediate video
Video.create(title: "Intermediate Vinyasa Flow Yoga Workout 35 mi", length_in_min: "30", fitness: "Intermediate", url: "https://www.youtube.com/embed/Z6jRKThDCBU")
Video.create(title: "Intermediate Vinyasa Flow & Stretch", length_in_min: "30", fitness: "Intermediate", url: "https://www.youtube.com/embed/qxB2f70vCc4")
Video.create(title: "30-MINUTE VINYASA FLOW", length_in_min: "30", fitness: "Intermediate", url: "https://www.youtube.com/embed/GZAEdTrb838")
# 45 min intermediate video
Video.create(title: "45 min Intermediate Yoga Flow", length_in_min: "45", fitness: "Intermediate", url: "https://www.youtube.com/embed/TWSo_Z4j3N4")
Video.create(title: "45-MINUTE DYNAMIC YOGA FLOW", length_in_min: "45", fitness: "Intermediate", url: "https://www.youtube.com/embed/3j5GwysBCfA")
Video.create(title: "Total Body Vinyasa Flow Yoga", length_in_min: "45", fitness: "Intermediate", url: "https://www.youtube.com/embed/wX-VCWYouTA")
# 60 min intermediate video
Video.create(title: "Vinyasa Flow Yoga - 60 Minute", length_in_min: "60", fitness: "Intermediate", url: "https://www.youtube.com/embed/d9SpulbEJmU")
Video.create(title: "1 Hour Vinyasa Flow For Flexibility", length_in_min: "60", fitness: "Intermediate", url: "https://www.youtube.com/embed/K0H7gLahXEs")
Video.create(title: "Fluid Flow . Intermediate/Challenging Yoga Class", length_in_min: "60", fitness: "Intermediate", url: "https://www.youtube.com/embed/Cb_tDilmAWs")
